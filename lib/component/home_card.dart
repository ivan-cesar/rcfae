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
import 'package:intl/intl.dart';

class HomeCard extends StatefulWidget {
  String title = "";
  String number = "";
  String? indication = "";
  String? sTitle = null;
  Function? reload = null;
  bool? active = true;

  HomeCard({
    Key? key,
    required this.title,
    required this.number,
    this.sTitle,
    this.indication,
    this.reload,
    this.active,
  }) : super(key: key);

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
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
      child: Row(
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
                "Total recensement",
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
              Row(
                children: [
                  Spacer(),
                  SizedBox(
                    width: 160,
                    height: 40,
                    child: ElevatedButton(
                      style: buttonSolidSmall,
                      onPressed: () {
                        _zip();
                      },
                      child: const AutoSizeText(
                        'Exporter',
                        maxLines: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
        ],
      ),
    );
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
}

//   Expanded(
//                   child: ElevatedButton(
//                 style:
//                     buttonSoftGen(backgroundColor: bgB, foregroundColor: color),
//                 onPressed: () {
//                   if (widget.reload != null) widget.reload!();
//                 },
//                 child: const Text('Actualiser'),
//               )),
