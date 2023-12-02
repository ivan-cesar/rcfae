import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:camera/camera.dart';
import 'package:cgrae_enrollment/component/camera_page.dart';
import 'package:cgrae_enrollment/utils/route_observer.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:cgrae_enrollment/component/separator.dart';
import 'package:cgrae_enrollment/utils/styles.dart';
import 'package:cgrae_enrollment/utils/file.dart';
import 'package:path/path.dart' as Path;

class FileField extends StatefulWidget {
  String uuid = "";
  String filename = "";
  String fileId = "";
  String title = "";
  bool isSet = false;
  String? sTitle = null;
  File? file = null;
  String? indication = "Selection un fichier";
  void Function(File?, String?)? setFile;

  FileField({
    Key? key,
    required this.uuid,
    required this.fileId,
    required this.title,
    required this.filename,
    required this.isSet,
    this.sTitle,
    this.indication,
    this.setFile,
    this.file,
  }) : super(key: key);

  @override
  State<FileField> createState() => _FileFieldState();
}

class _FileFieldState extends State<FileField> {
  File? localFile = null;
  String fileType = "";

  @override
  void initState() {
    super.initState();
    localFile = widget.file;
  }

  @override
  Widget build(BuildContext context) {
    String fileId = widget.fileId;
    String title = widget.title;
    bool isSet = widget.isSet;
    String? sTitle = widget.sTitle;
    String? indication = widget.indication;
    Function(File, String)? setFile = widget.setFile;

    Color? color = isSet ? Colors.blue[500] : AppColors.primarySwatch;
    Color? bg = isSet ? Colors.blue[50] : AppColors.softGreen[200];
    Color? bgB = isSet ? Colors.blue[100] : AppColors.softGreen[500];

    print("localFile");

    if (localFile != null) {
      switch (Path.extension(localFile!.path)) {
        case ".pdf":
          setState(() {
            fileType = "PDF";
          });
          break;
        case ".png":
          setState(() {
            fileType = "PNG";
          });
          break;
        default:
          setState(() {
            fileType = "";
          });
      }
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: bg, borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w900,
              color: color,
            ),
          ),
          if (sTitle != null)
            Text(
              sTitle,
              style: TextStyle(
                fontSize: 12,
                fontStyle: FontStyle.italic,
                color: color,
              ),
            ),
          HSeparator(10),
          if (localFile != null)
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              // todo : is image
              child: fileType == "PNG"
                  ? Image.file(
                      localFile!,
                      fit: BoxFit.cover,
                      height: 300,
                    )
                  : Icon(
                      Icons.file_present_rounded,
                      size: 250,
                      color: color?.withAlpha(500),
                    ),
            ),
          if (localFile == null)
            Icon(
              Icons.file_present_rounded,
              size: 40,
              color: color,
            ),
          HSeparator(10),
          AutoSizeText(
            indication!,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontStyle: FontStyle.italic,
              color: color,
            ),
            maxLines: 1,
          ),
          HSeparator(10),
          Row(
            children: [
              if (localFile == null)
                Expanded(
                    child: ElevatedButton(
                  style: buttonSoftGen(
                      backgroundColor: bgB, foregroundColor: color),
                  onPressed: () async {
                    formDocument(_setFile, fileId);
                  },
                  child: Icon(Icons.file_present_rounded),
                )),
              if (localFile == null) VSeparator(5),
              if (localFile == null)
                Expanded(
                    child: ElevatedButton(
                  style: buttonSoftGen(
                      backgroundColor: bgB, foregroundColor: color),
                  onPressed: () async {
                    fromCamera(_setFile, fileId);
                  },
                  child: Icon(Icons.camera_alt),
                )),
              if (localFile != null) VSeparator(5),
              if (localFile != null)
                Expanded(
                    child: ElevatedButton(
                  style: buttonSoftGen(
                      backgroundColor: bgB, foregroundColor: color),
                  onPressed: () async {
                    deleteFile(localFile!.path);
                    _setFile(null, fileId);
                  },
                  child: Icon(Icons.remove_circle),
                )),
            ],
          )
        ],
      ),
    );
  }

  void formDocument(Function? setFile, String fileId) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      File file = File(result.files.single.path!);
      final extension = Path.extension(file.path);
      final fileName = "${widget.filename}${extension}";
      String newPath = await getFilePath(widget.uuid, fileName);
      File newFile = await moveFile(file, newPath);
      if (setFile != null) setFile(newFile, fileId);
    } else {
      // User canceled the picker
    }
  }

  void fromCamera(Function(File, String)? setFile, String fileId) async {
    Color color = Colors.black.withOpacity(0.01);
    changeSystemUIOverlayStyle(color, Colors.black);

    await availableCameras().then(
      (value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => CameraPage(
            cameras: value,
            setFile: setFile,
            fileId: fileId,
            uuid: widget.uuid,
            filename: "${widget.filename}.png",
          ),
        ),
      ),
    );
  }

  void _setFile(File? file, String? fileId) {
    imageCache.clear();
    imageCache.clearLiveImages();

    widget.setFile!(file, fileId);
    setState(() {
      localFile = file;
    });
  }
}
