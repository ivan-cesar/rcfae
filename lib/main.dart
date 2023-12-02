import 'dart:io';

import 'package:cgrae_enrollment/screen/Pageinter.dart';
import 'package:cgrae_enrollment/screen/online_home_page.dart';
import 'package:cgrae_enrollment/utils/file.dart';
import 'package:cgrae_enrollment/utils/route_observer.dart';
import 'package:cgrae_enrollment/utils/store.dart';
import 'package:flutter/material.dart';
import 'package:cgrae_enrollment/utils/theme.dart';
import 'package:cgrae_enrollment/screen/login_page.dart';
import 'package:cgrae_enrollment/screen/offline_page.dart';
import 'package:cgrae_enrollment/screen/offline_home_page.dart';
import 'package:cgrae_enrollment/component/scroll_behavior.dart';
import 'package:cgrae_enrollment/component/help_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  createDir();
  runApp(const MyApp());
}

Future createDir() async {
  String baseDir = await getBaseDir();
  String expoDir = await getExportDir();
  String backupDir = await getBackupDir();

  if (!(await File(baseDir).exists())) {
    File f = await File('${baseDir}/init.txt').create(recursive: true);
    await f.delete();
  }

  if (!(await File(expoDir).exists())) {
    File f = await File('${expoDir}/init.txt').create(recursive: true);
    await f.delete();
  }

  if (!(await File(backupDir).exists())) {
    File f = await File('${backupDir}/init.txt').create(recursive: true);
    await f.delete();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final Store store = Get.put(Store());

    // return MaterialApp(
    return GetMaterialApp(
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: CustomScrollBehavior(),
          child: child!,
        );
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: const [
        Locale('fr', 'FR'),
      ],
      routes: {
        '/': (context) => const LoginPage(title: ''),
        '/offline': (context) => const OfflineHomePage(title: ''),
        '/offline/form': (context) => const OfflinePage(title: ''),
        '/online/home': (context) => const OnlineHomePage(title: ''),
        '/test/gen': (context) => Pageinter(),
        HelpScreen.tag: (_)=>HelpScreen(),
        //'/help_screen': (context) => HelpScreen(),

      },
      navigatorObservers: [MyRouteObserver()],
      // home: const LoginPage(title: 'Flutter Demo Home Page'),
      // home: const OfflinePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// import 'package:cgrae_enrollment/component/interface.dart';
//'/': (context) => const OfflineHome(title: ''),
