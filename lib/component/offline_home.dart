import 'dart:io';
import 'package:cgrae_enrollment/component/by_propulse.dart';
import 'package:cgrae_enrollment/component/home_card_sync.dart';
import 'package:cgrae_enrollment/component/home_card_green.dart';
import 'package:cgrae_enrollment/component/padding.dart';
import 'package:cgrae_enrollment/utils/file.dart';
import 'package:cgrae_enrollment/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:cgrae_enrollment/component/separator.dart';
// import 'package:cgrae_enrollment/component/home_card.dart';

import 'dart:io' as io;

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
    MediaQueryData media = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Image.asset(
            'assets/images/img_home_2.png',
            fit: BoxFit.fitHeight,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HSeparator(70),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SizedBox(
                      child: Image.asset(
                        'assets/images/logocgrae_rcfae.png',
                        width: 250,
                        //fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  HSeparator(20),
                  HomeCardSync(
                      active: enrolmentNumber > 0,
                      reload: _listOfFiles,
                      number: "${enrolmentNumber}",
                      title: "Enrôlement",
                      sTitle: "Nombre d'enrôlement éffectués",
                      indication: ""),
                  HSeparator(40),
                  HomeCardGreen(
                    title: "title",
                    number: "number",
                    onPressed: () {
                      Navigator.pushNamed(context, '/offline/form').then((_) {
                        _listOfFiles();
                      });
                    },
                  ),
                  HSeparator(40),
                  ElevatedButton(
                    style: buttonSolid,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Se connecter'),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ByPropulse(),
          ),
        ],
      )),
    );
  }

  void _listOfFiles() async {
    String directory = await getBaseDir();
    List _files = Directory(directory).listSync();

    const initialValue = 0;
    final result = _files.fold<int>(initialValue, (previousValue, element) {
      var dir = element as Directory;
      var dataFile = "${dir.path}/data.json";
      var ok = io.File(dataFile).existsSync();
      if(ok) return previousValue + 1;
      return previousValue;
    });
    setState(() {
      files = _files;
      enrolmentNumber = result;
    });
  }
}
