import 'package:camera/camera.dart';
import 'package:cgrae_enrollment/component/separator.dart';
import 'package:cgrae_enrollment/utils/styles.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class PreviewPage extends StatelessWidget {
  Function retake;
  Function save;
  String filename;

  PreviewPage(
      {Key? key,
      required this.filename,
      required this.picture,
      required this.retake,
      required this.save})
      : super(key: key);

  final XFile picture;

  @override
  Widget build(BuildContext context) {
    Widget controls = Padding(
      padding: EdgeInsets.only(left: 50, right: 50, top: 50),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: buttonTrans,
                  onPressed: () {
                    retake(context);
                  },
                  child: const Text('Reprendre'),
                ),
              ),
              VSeparator(10),
              Expanded(
                child: ElevatedButton(
                  style: buttonTrans,
                  onPressed: () {
                    save(picture, filename, context);
                  },
                  child: const Text('Enregister'),
                ),
              ),
            ],
          ),
        ],
      ),
    );

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black.withOpacity(0.8),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.file(
              File(picture.path),
              fit: BoxFit.cover,
              width: 300,
            ),
          ),
          // SizedBox(height: 24),
          // Text(picture.name),
          controls,
        ]),
      ),
    ));
  }
}
