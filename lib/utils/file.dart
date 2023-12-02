import 'package:path_provider/path_provider.dart';
import 'dart:io';

String base = "enrolment";

Future<String> getExportDir() async {
  Directory appDocumentsDirectory =
      await getApplicationDocumentsDirectory(); // 1
  String appDocumentsPath = appDocumentsDirectory.path; // 2
  String filePath = '$appDocumentsPath/export';
  return filePath;
}

Future<String> getBackupDir() async {
  Directory appDocumentsDirectory =
  await getApplicationDocumentsDirectory(); // 1
  String appDocumentsPath = appDocumentsDirectory.path; // 2
  String filePath = '$appDocumentsPath/backup';
  return filePath;
}

Future<String> getBaseDir({String? dir = null}) async {
  Directory appDocumentsDirectory =
      await getApplicationDocumentsDirectory(); // 1
  String appDocumentsPath = appDocumentsDirectory.path; // 2
  String filePath = dir != null
      ? '$appDocumentsPath/$base/$dir'
      : '$appDocumentsPath/$base'; // 3
  return filePath;
}

Future<String> getFilePath(String dir, String filename) async {
  Directory appDocumentsDirectory =
      await getApplicationDocumentsDirectory(); // 1
  String appDocumentsPath = appDocumentsDirectory.path; // 2
  String filePath = '$appDocumentsPath/$base/$dir/${filename}'; // 3
  return filePath;
}

Future<File> moveFile(File sourceFile, String newPath) async {
  await deleteFile(newPath);
  await File(newPath).create(recursive: true);
  return await sourceFile.rename(newPath);
}


Future<File> copyFile(File sourceFile, String newPath) async {
  await File(newPath).create(recursive: true);
  return await sourceFile.copy(newPath);
}

Future deleteFile(String path) async {
  File imageExist = new File(path);
  if (await imageExist.exists()) {
    await imageExist.delete();
  }
}

Future<File> writeInFile(String newFile, String data) async {
  await deleteFile(newFile);
  File file = await File(newFile).create(recursive: true);
  return await file.writeAsString(data);
}

Future<File> writeBytesInFile(String newFile, List<int> data) async {
  await deleteFile(newFile);
  return await File(newFile).writeAsBytes(data);
}



// getFilePath
// writeInFile
