import 'dart:async';
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

class ItemsCardSync extends StatefulWidget {
  String title = "";
  String uuid = "";
  String sTitle = "";
  String? indication = "";
  Function? reload = null;
  bool? active = true;

  ItemsCardSync({
    Key? key,
    required this.title,
    required this.uuid,
    required this.sTitle,
    this.indication,
    this.reload,
    this.active,
  }) : super(key: key);

  @override
  State<ItemsCardSync> createState() => _ItemsCardSyncState();
}

class _ItemsCardSyncState extends State<ItemsCardSync>
    with TickerProviderStateMixin {
  final dio = Dio.Dio();
  final Store store = Get.find();

  late String? syncServerUrl = store.appStore.syncServerUrl;
  late AppStore appStore = store.appStore;
  late UserConnected userConnected = appStore.userConnected;
  late String? serverUrl = appStore.serverUrl;

  bool wait = false;

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
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 10,
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
                child: CircleAvatar(
                  backgroundColor: Color(0xFFCEEEFF),
                  child: Icon(
                    Icons.inventory_rounded,
                    color: Colors.blue,
                    size: 18.0,
                  ),
                  radius: 15.0,
                ),
              ),
              VSeparator(10),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    "${widget.title}",
                    maxLines: 1,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                  AutoSizeText(
                    "${widget.sTitle}",
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black87,
                    ),
                  ),
                  HSeparator(10),
                ],
              )),
              VSeparator(20),
              Row(
                children: [
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: ElevatedButton(
                      style: buttonSolidSmallColor(0xFFE5F1F2, 0xFF0A867F),
                      onPressed: !wait
                          ? () {
                              _sync();
                            }
                          : null,
                      child: const AutoSizeText('Synchronisé', maxLines: 1),
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
      ),
    );
  }

  void _sync() async {
    await _setWait(true);
    try {
      String directory = await getBaseDir();
      String url = "$directory/${widget.uuid}";
      var result = await _syncOnDir(url);
      print("result");
      print(result);

      await _setWait(false);
      if (widget.reload != null) widget.reload!();

      // var _timer = Timer(Duration(seconds: 2), ()async {
      // });
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
          var l = await _endSession(sid, adherent);

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
      _syncError(
          "Synchronisation $adherentNames : Erreur de synchronisation des données");
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

  Future<bool?> _endSession(String sid, String adherentNames) async {
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
      _syncError(
          "Synchronisation $adherentNames : Erreur de clôture la session $sid");
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
