import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:cgrae_enrollment/component/by_propulse.dart';
import 'package:cgrae_enrollment/component/home_card_sync.dart';
import 'package:cgrae_enrollment/component/home_card_green.dart';
import 'package:cgrae_enrollment/component/home_card_white.dart';
import 'package:cgrae_enrollment/utils/file.dart';
import 'package:cgrae_enrollment/utils/store.dart';
import 'package:cgrae_enrollment/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:cgrae_enrollment/component/separator.dart';
import 'package:get/get.dart';

// import 'package:cgrae_enrollment/component/home_card.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dart:io' as io;

import '../utils/app_store_types.dart';
import 'item_card_sync.dart';

class OnlineHome extends StatefulWidget {
  const OnlineHome({super.key, required this.title});

  final String title;

  @override
  State<OnlineHome> createState() => _OnlineHomeState();
}

class _OnlineHomeState extends State<OnlineHome> {
  int enrolmentNumber = 0;
  List<Adhesion> adhesions = [];
  Adhesion? _selected = null;

  var colors = Color(0xFFF0F4F5);

  final Store store = Get.find();
  late AppStore appStore = store.appStore;
  late UserConnected userConnected = appStore.userConnected;
  late String? serverUrl = appStore.serverUrl;

  @override
  void initState() {
    super.initState();
    _listOfFiles();
    print(userConnected.toJson());
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: colors,
        body: Stack(
          children: [
            // Padding(
            //   padding: EdgeInsets.only(top: 100),
            //   child: Image.asset(
            //     'assets/images/img_home_2.png',
            //     fit: BoxFit.fitHeight,
            //   ),
            // ),

            Align(
              alignment: Alignment.bottomCenter,
              child: ByPropulse(),
            ),

            SingleChildScrollView(
              physics: ScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Padding(
                padding:
                    EdgeInsets.only(left: 20, right: 20, bottom: 100, top: 85),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // InkWell(
                    //   onTap: () {
                    //     Navigator.pop(context);
                    //   },
                    //   child: SizedBox(
                    //     child: Image.asset(
                    //       'assets/images/logocgrae_rcfae.png',
                    //       width: 250,
                    //       //fit: BoxFit.fitHeight,
                    //     ),
                    //   ),
                    // ),

                    HSeparator(10),
                    HomeCardSync(
                        active: enrolmentNumber > 0,
                        reload: _listOfFiles,
                        number: "${enrolmentNumber}",
                        title: "Enrôlement",
                        sTitle: "Nombre d'enrôlement éffectués",
                        indication: ""),
                    HSeparator(10),
                    HomeCardWhite(
                      title: "title",
                      number: "number",
                      onPressed: () {
                        Navigator.pushNamed(context, '/offline/form').then((_) {
                          _listOfFiles();
                        });
                      },
                    ),
                    HSeparator(20),
                    if (adhesions.length > 0)
                      Row(
                        children: [
                          AutoSizeText(
                            "Liste des enrôlements à synchroniser",
                            maxLines: 1,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: AppColors.primarySwatch),
                          ),
                        ],
                      ),
                    HSeparator(10),
                    Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: adhesions.length,
                        itemBuilder: (context, index) {
                          final item = adhesions[index] as Adhesion;
                          var name =
                              "${item.adherent?.familyName} ${item.adherent?.firstNames}";
                          var location =
                              "${item.adherent?.geographicalAddress} ";

                          return Column(
                            children: [
                              ItemsCardSync(
                                title: name,
                                sTitle: location,
                                uuid: item.uuid ?? "",
                                reload: _listOfFiles,
                              ),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          );
                          // return Container(
                          //     decoration: BoxDecoration(
                          //         borderRadius: BorderRadius.circular(10),
                          //         color: _selected == item.uuid
                          //             ? AppColors.softGreen
                          //             : Colors.white),
                          //     child: ListTile(
                          //       selected: _selected == item.uuid,
                          //       selectedColor: AppColors.primarySwatch,
                          //       title: Text('${item.adherent?.familyName}'),
                          //       subtitle: Text('${item.adherent?.firstNames}'),
                          //       onTap: () {
                          //         selectOne(item);
                          //       },
                          //     ));
                        },
                      ),
                    ),
                    HSeparator(100),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 75,
              child: Container(
                margin: EdgeInsets.only(left: 15, right: 15, top: 10),
                decoration: BoxDecoration(
                  color: colors.withOpacity(0.9),
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20.0,
                        child: CircleAvatar(
                          backgroundColor: AppColors.softGreen,
                          child: Icon(
                            Icons.person,
                            color: AppColors.primarySwatch,
                            size: 20.0,
                          ),
                          radius: 20.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${userConnected.firstName} ${userConnected.lastName}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text('${userConnected.username}'),
                          ],
                        ),
                      ),
                      Expanded(child: Text("")),
                      InkWell(
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Icon(
                            Icons.logout_rounded,
                            color: AppColors.primarySwatch,
                            size: 20.0,
                          ),
                          radius: 20.0,
                        ),
                        onTap: () {
                          _logout();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void selectOne(dynamic _select) {
    setState(() {
      _selected = _select.value;
    });
    // if (widget.onSelect != null) widget.onSelect!(_select);
    Timer.periodic(const Duration(milliseconds: 100), (t) {
      Navigator.pop(context);
      t.cancel();
    });
  }

  void _listOfFiles() async {
    String directory = await getBaseDir();
    List _files = Directory(directory).listSync();

    const initialValue = 0;

    final result = _files.fold<int>(initialValue, (previousValue, element) {
      var dir = element as Directory;
      var dataFile = "${dir.path}/data.json";
      var ok = io.File(dataFile).existsSync();
      if (ok) return previousValue + 1;
      return previousValue;
    });

    List<Adhesion> initList = [];
    final _adhesions =
        _files.fold<List<Adhesion>>(initList, (previousValue, element) {
      var dir = element as Directory;
      var dataFile = "${dir.path}/data.json";
      if (File(dataFile).existsSync()) {
        var input = File(dataFile).readAsStringSync();
        var json = jsonDecode(input);
        previousValue.add(Adhesion.fromJson(json));
      }
      return previousValue;
    });

    print(_adhesions);

    setState(() {
      adhesions = _adhesions;
      enrolmentNumber = result;
    });
  }

  Future<Null> _logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('userConnected');
    Navigator.pushNamed(context, '/');
  }
}
