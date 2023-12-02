import 'dart:io';
import 'package:cgrae_enrollment/component/by_propulse.dart';
import 'package:cgrae_enrollment/component/home_card.dart';
import 'package:cgrae_enrollment/component/login_header.dart';
import 'package:cgrae_enrollment/component/padding.dart';
import 'package:cgrae_enrollment/utils/file.dart';
import 'package:cgrae_enrollment/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:cgrae_enrollment/component/separator.dart';

class OfflineHome extends StatefulWidget {
  const OfflineHome({super.key, required this.title});

  final String title;

  @override
  State<OfflineHome> createState() => _OfflineHomeState();
}

class _OfflineHomeState extends State<OfflineHome> {
  int enrolmentNumber = 0;
  List files = [];

  @override
  void initState() {
    super.initState();
    _listOfFiles();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                LoginHeader(),
                HSeparator(20),
                Text("Adhésion", style: loginTitle),
                HSeparator(6),
                LoginFieldPadding(
                    context,
                    Text(
                      "Avec vos données d'Agent pour accédez à l'espace d'enrôlement",
                      textAlign: TextAlign.center,
                    )),
                HSeparator(30),
                LoginFieldPadding(
                  context,
                  HomeCard(
                      active: files.length > 0,
                      reload: _listOfFiles,
                      number: "${files.length}",
                      title: "Enrôlement",
                      sTitle: "Nombre d'enrôlement éffectués",
                      indication: ""),
                ),
                HSeparator(20),
                LoginFieldPadding(
                    context,
                    ElevatedButton(
                      style: buttonSolid,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Se connecter'),
                    )),
                HSeparator(10),
                LoginFieldPadding(
                    context,
                    ElevatedButton(
                      style: buttonSoft,
                      onPressed: () {
                        Navigator.pushNamed(context, '/offline/form').then((_) {
                          _listOfFiles();
                        });
                      },
                      child: const Text('Nouvel enrôlement hors connexion'),
                    )),
                HSeparator(60),
                ByPropulse(),
                HSeparator(20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _listOfFiles() async {
    String directory = await getBaseDir();
    List _files = Directory(directory).listSync();
    print("$_files");
    setState(() {
      files = _files;
      enrolmentNumber = _files.length;
    });
  }
}
