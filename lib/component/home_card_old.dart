import 'dart:io';
import 'package:cgrae_enrollment/component/separator.dart';
import 'package:cgrae_enrollment/utils/app_store_types.dart';
import 'package:cgrae_enrollment/utils/adhesion_json.dart';
import 'package:cgrae_enrollment/utils/file.dart';
import 'package:cgrae_enrollment/utils/gen_excel.dart';
import 'package:cgrae_enrollment/utils/styles.dart';
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
    String title = widget.title;
    String? sTitle = widget.sTitle;
    String? indication = widget.indication;

    Color? color = Colors.blue[500];
    Color? bg = Colors.blue[50];
    Color? bgB = Colors.blue[100];

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: bg, borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w900,
              color: color,
            ),
          ),
          if (sTitle != null)
            Text(
              sTitle,
              style: TextStyle(
                fontSize: 15,
                fontStyle: FontStyle.italic,
                color: color,
              ),
            ),
          HSeparator(10),
          Text(
            "${widget.number}",
            style: TextStyle(
              fontSize: 100,
              fontWeight: FontWeight.w700,
              color: color,
            ),
          ),
          Row(
            children: [
              // if (widget.active!) VSeparator(10),
              if (widget.active!)
                Expanded(
                    child: ElevatedButton(
                  style: buttonSoftGen(
                      backgroundColor: bgB, foregroundColor: color),
                  onPressed: () {
                    _zip();
                  },
                  child: const Text('Exporter'),
                )),
            ],
          )
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
