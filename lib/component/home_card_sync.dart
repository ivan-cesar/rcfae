import 'dart:io';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cgrae_enrollment/component/separator.dart';
import 'package:cgrae_enrollment/utils/app_store_types.dart';
import 'package:cgrae_enrollment/utils/file.dart';
import 'package:cgrae_enrollment/utils/gen_excel.dart';
import 'package:cgrae_enrollment/utils/styles.dart';
import 'package:cgrae_enrollment/utils/adhesion_json.dart';
import 'package:flutter/material.dart';
import 'package:flutter_file_dialog/flutter_file_dialog.dart';
import 'package:archive/archive_io.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:file_manager/file_manager.dart';
import 'package:path/path.dart' as path;
import 'package:dio/dio.dart' as Dio;
import 'dart:convert';
import 'package:cgrae_enrollment/utils/store.dart';
import 'package:path/path.dart' as Path;

// ADD SPINNER SYNC === OK
// ADD REMOVE DATA SYNC ON DEVICE  === OK
// LIMIT 7 CHAR FOR MATRICULE  === OK
// ADD APP VERSION NUMBER  === OK

class HomeCardSync extends StatefulWidget {
  String title = "";
  String number = "";
  String? indication = "";
  String? sTitle = null;
  Function? reload = null;
  bool? active = true;

  HomeCardSync({
    Key? key,
    required this.title,
    required this.number,
    this.sTitle,
    this.indication,
    this.reload,
    this.active,
  }) : super(key: key);

  @override
  State<HomeCardSync> createState() => _HomeCardSyncState();
}

class _HomeCardSyncState extends State<HomeCardSync>
    with TickerProviderStateMixin {
  bool wait = false;

  final Store store = Get.find();
  late AppStore appStore = store.appStore;
  late UserConnected userConnected = appStore.userConnected;

  late String? syncServerUrl = store.appStore.syncServerUrl;
  late String? serverUrl = appStore.serverUrl;

  late AnimationController controller;

  @override
  void initState() {
    print("syncServerUrl");
    print(syncServerUrl);

    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);

    print("userConnected");
    print(userConnected.toJson());

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int? count = int.tryParse(widget.number);
    if (count == null) count = 0;

    return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 20,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Image.asset(
                    'assets/images/total_recensement.png',
                    width: 90,
                    height: 90,
                    //fit: BoxFit.fitHeight,
                  ),
                ),
                VSeparator(20),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "Total enrôlement",
                      maxLines: 1,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: AppColors.primarySwatch),
                    ),
                    AutoSizeText(
                      "Nombre de personne enrôlée à synchroniser",
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.primarySwatch,
                      ),
                    ),
                    HSeparator(2),
                    AutoSizeText(
                      "${widget.number}",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 50,
                      ),
                    ),
                  ],
                )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            if (count > 0)
              Row(
                children: [
                  Spacer(),
                  SizedBox(
                    width: 140,
                    height: 40,
                    child: ElevatedButton(
                      style: buttonSolidSmall,
                      onPressed: !wait
                          ? () {
                              _zip();
                            }
                          : null,
                      child: const AutoSizeText(
                        'Exporter',
                        maxLines: 1,
                      ),
                    ),
                  ),
                  if (userConnected.isConnected == true)
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 140,
                          height: 40,
                          child: ElevatedButton(
                            style:
                                buttonSolidSmallColor(0xFFF97316, 0xFFFFFFFF),
                            onPressed: !wait
                                ? () {
                                    _sync();
                                  }
                                : null,
                            child: const AutoSizeText(
                              'Synchronisé',
                              maxLines: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            if (wait)
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  LinearProgressIndicator(
                    value: controller.value,
                    semanticsLabel: 'Circular progress indicator',
                  ),
                ],
              ),
          ],
        ));
  }

  void _zip() async {
    try {
      String directory = await getBaseDir();
      String export = await getExportDir();
      final dataDir = Directory(directory);

      String excelMove = "${directory}/data-all.xlsx";

      String pathExcel = await _excelForAllData();
      await moveFile(File(pathExcel), excelMove);

      String outFilename = '${export}/data.zip';
      var encoder = ZipFileEncoder();
      encoder.zipDirectory(dataDir, filename: outFilename);
      File zipFile = File(outFilename);

      await File(excelMove).delete();

      if (!await FlutterFileDialog.isPickDirectorySupported()) {
        print("Picking directory not supported");
        return;
      }
      final pickedDirectory = await FlutterFileDialog.pickDirectory();

      final DateTime now = DateTime.now();
      final DateFormat formatter = DateFormat('yyyy-MM-dd_hh-ss');
      String out = "data-${formatter.format(now)}.zip";

      if (pickedDirectory != null) {
        final filePath = await FlutterFileDialog.saveFileToDirectory(
          directory: pickedDirectory,
          data: zipFile.readAsBytesSync(),
          mimeType: "zip",
          fileName: out,
          replace: true,
        );
      }
    } catch (e) {
      print(e);
    }
  }

  void _sync() async {
    await _setWait(true);

    try {
      String directory = await getBaseDir();
      List<FileSystemEntity>? list = _listOfFileInDir(directory);
      var rList = list?.map((element) async {
        return await _syncOnDir(element.path);
      });

      if (rList != null) {
        var values = await Future.wait(rList);

        print("rList in _sync");
        print(rList);

        print("values in _sync");
        print(values);

        await _setWait(false);
      } else {
        await _setWait(false);
      }
    } catch (e) {
      print(e);
      await _setWait(false);
    }
  }

  List<FileSystemEntity>? _listOfFileInDir(String directory) {
    final dataDir = Directory(directory);

    if (FileManager.isDirectory(dataDir)) {
      if (dataDir.existsSync()) {
        List<FileSystemEntity> entries = dataDir.listSync(recursive: false);
        print("entries");
        print(entries);
        return entries.toList();
      }
    }
    return [];
  }

  Future<bool> _syncOnDir(String _path) async {
    print("======= DIR =======");
    print(_path);
    List<FileSystemEntity>? _list = _listOfFileInDir(_path);

    try {
      // COPY FILES
      String dir = await getBackupDir();
      String newDir = Path.basename(_path);
      String backupDir = "${dir}/${newDir}";
      var copies = _list?.map((element) async {
        var newFileUrl = "$backupDir/${Path.basename(element.path)}";
        var newFile = await copyFile(File(element.path), newFileUrl);
        return true;
      });
      if (copies != null) {
        var values = await Future.wait(copies);
        print("copies");
        print(values);
      }
    } catch (e) {
      print(e);
      return false;
    }

    List<FileSystemEntity> docs = [];
    FileSystemEntity? jsonDataFile = null;

    _list?.forEach((element) {
      final extension = path.extension(element.path);
      switch (extension) {
        case ".png":
          docs.add(element);
          break;
        case ".pdf":
          docs.add(element);
          break;
        case ".jpeg":
          docs.add(element);
          break;
        case ".jpg":
          docs.add(element);
          break;
        case ".json":
          jsonDataFile = element;
          break;
      }
    });

    if (jsonDataFile != null) {

      var input = await File(jsonDataFile!.path).readAsString();
      String? sid = await _postData(input);
      var map = jsonDecode(input);
      var adherent =
          "${map["adherent"]["familyName"]} ${map["adherent"]["firstNames"]}";

      _syncInfo("Synchronisation $adherent : Ouverture de session");

      List<bool> all = [];

      print("======> _postData : sid");
      print(sid);

      if (sid != null && sid != "") {
        if (docs.length > 0) {
          var r = await _postFile(sid, docs[0], adherent);
          if (r != null) all.add(r);
        }

        if (docs.length > 1) {
          var r = await _postFile(sid, docs[1], adherent);
          if (r != null) all.add(r);
        }

        if (docs.length > 2) {
          var r = await _postFile(sid, docs[2], adherent);
          if (r != null) all.add(r);
        }

        if (docs.length > 3) {
          var r = await _postFile(sid, docs[3], adherent);
          if (r != null) all.add(r);
        }

        if (docs.length > 4) {
          var r = await _postFile(sid, docs[4], adherent);
          if (r != null) all.add(r);
        }

        if (!all.contains(false)) {
          var l = await _endSession(sid,adherent);

          if (l != null && l) {
            // DELETE FILE DIR
            final dir = Directory(_path);
            dir.deleteSync(recursive: true);

            // RELOAD STATS
            if (widget.reload != null) widget.reload!();
            // SHOW MASSAGE
            _syncSuccess("Données synchronisés");
          }
        }
      }
    }

    print("===================");
    return true;
  }

  Future<String?> _postData(String dataString) async {
    var dio = Dio.Dio();
    var map = jsonDecode(dataString);

    print("=== >map");
    print(map);

    var adherentNames =
        "${map["adherent"]["familyName"]} ${map["adherent"]["firstNames"]}";

    if (map["actor"] == "") {
      map["actor"] = userConnected.username;
    }
    try {
      final response = await dio.post(
        '$syncServerUrl/sync/start',
        data: map,
      );
      Map responseBody = response.data;
      var ok = responseBody["success"] as bool;
      print(ok);
      if (ok) {
        var data = responseBody["data"];
        return data["sID"];
      }
    } catch (e) {
      print(e);
      _syncError("Synchronisation $adherentNames : Erreur de synchronisation des données");
    }
  }

  Future<bool?> _postFile(
      String sid, FileSystemEntity dataFile, String adherentNames) async {
    var dio = Dio.Dio();
    File file = new File(dataFile.path);
    String fileName = file.path.split('/').last;

    try {
      final formData = Dio.FormData.fromMap({
        'kind': fileName,
        'uuid': sid,
        'file':
            await Dio.MultipartFile.fromFile(dataFile.path, filename: fileName),
      });
      print(formData.toString());
      final response =
          await dio.post('$syncServerUrl/sync/doc', data: formData);
      print(response);
      _syncInfo("Fichier ${fileName} synchronisé");
      return true;
    } catch (e) {
      print(e);
      _syncError(
          "Synchronisation $adherentNames : Erreur de synchronisation du fichier ${fileName}");
    }
  }

  Future<bool?> _endSession(String sid,String adherentNames) async {
    var dio = Dio.Dio();
    try {
      final response = await dio.post(
        '$syncServerUrl/sync/end',
        data: {"uuid": sid},
      );
      print(response);
      return true;
    } catch (e) {
      print(e);
      _syncError("Synchronisation $adherentNames : Erreur de clôture la session $sid");
    }
  }

  Future<String> _excelForAllData() async {
    String directory = await getBaseDir();
    List<FileSystemEntity> _files = Directory(directory).listSync();
    List<String> allData = _files.map((element) {
      String path = element.path;
      String dataPath = "$path/data.json";
      File file = File(dataPath);
      String fileData = file.readAsStringSync();
      return fileData;
    }).toList();

    String dir = await getExportDir();
    String filenameExcel = "data.xlsx";
    String pathExcel = "${dir}/${filenameExcel}";
    print("pathExcel $pathExcel");
    List<Adhesion> ads = adhesionsFromJson(allData.toString());
    List<int> bytes = await genExcelForAll(ads);
    await writeBytesInFile(pathExcel, bytes);
    return pathExcel;
  }

  Future<bool> _setWait(bool b) async {
    print("_setWait");
    print(b);
    setState(() {
      wait = b;
    });
    return b;
  }

  void _syncError(String text) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.redAccent,
        content: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  void _syncInfo(String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.blueAccent,
        content: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  void _syncSuccess(String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green,
        content: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
