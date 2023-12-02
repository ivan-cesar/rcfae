import 'dart:io';

import 'package:camera/camera.dart';
import 'package:cgrae_enrollment/component/preview_page.dart';
import 'package:cgrae_enrollment/utils/file.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CameraPage extends StatefulWidget {
  void Function(File, String)? setFile;
  String uuid = "";
  String fileId = "";
  String filename = "";

  CameraPage({
    Key? key,
    required this.cameras,
    required this.uuid,
    required this.fileId,
    required this.filename,
    this.setFile,
  }) : super(key: key);

  final List<CameraDescription>? cameras;

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController _cameraController;
  bool _isRearCameraSelected = true;

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    initCamera(widget.cameras![0]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          (_cameraController.value.isInitialized)
              ? CameraPreview(_cameraController)
              : Container(
                  color: Colors.black,
                  child: const Center(child: CircularProgressIndicator()),
                ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.20,
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                    color: Colors.black),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: IconButton(
                        padding: EdgeInsets.zero,
                        iconSize: 30,
                        icon: Icon(
                            _isRearCameraSelected
                                ? CupertinoIcons.switch_camera
                                : CupertinoIcons.switch_camera_solid,
                            color: Colors.white),
                        onPressed: () {
                          setState(() =>
                              _isRearCameraSelected = !_isRearCameraSelected);
                          initCamera(
                              widget.cameras![_isRearCameraSelected ? 0 : 1]);
                        },
                      )),
                      Expanded(
                          child: IconButton(
                        onPressed: () {
                          onTake(context);
                        },
                        iconSize: 50,
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        icon: const Icon(Icons.circle, color: Colors.white),
                      )),
                      // const Spacer(),
                      Expanded(
                          child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        iconSize: 50,
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        icon: const Icon(Icons.close_outlined,
                            color: Colors.white),
                      )),
                    ]),
              )),
        ],
      ),
    );
  }

  Future<XFile?> takePicture() async {
    if (!_cameraController.value.isInitialized) {
      return null;
    }
    if (_cameraController.value.isTakingPicture) {
      return null;
    }
    try {
      await _cameraController.setFlashMode(FlashMode.off);
      XFile picture = await _cameraController.takePicture();
      return picture;
      /*
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PreviewPage(
            picture: picture,
          ),
        ),
      );
       */
    } on CameraException catch (e) {
      debugPrint('Error occured while taking picture: $e');
      return null;
    }
  }

  Future onTake(BuildContext context) async {
    XFile? file = await takePicture();
    if (file != null) {
      showPreview(widget.filename, file, retake, save);
    }
  }

  Future save(XFile file, String filename, BuildContext context) async {
    File _file = File(file.path);
    String newPath = await getFilePath(widget.uuid, filename);
    File newFile = await moveFile(_file, newPath);
    widget.setFile!(newFile, widget.fileId);
    Navigator.pop(context);
    Navigator.pop(context);
  }

  Future retake(BuildContext context) async {
    Navigator.pop(context);
    await takePicture();
  }

  void showPreview(
      String filename, XFile picture, Function retake, Function save) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return PreviewPage(
            filename: filename,
            picture: picture,
            retake: retake,
            save: save,
          );
        });
  }

  Future initCamera(CameraDescription cameraDescription) async {
    _cameraController =
        CameraController(cameraDescription, ResolutionPreset.high);
    try {
      await _cameraController.initialize().then((_) {
        if (!mounted) return;
        setState(() {});
      });
    } on CameraException catch (e) {
      debugPrint("camera error $e");
    }
  }
}
