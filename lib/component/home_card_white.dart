import 'dart:io';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cgrae_enrollment/component/separator.dart';
import 'package:cgrae_enrollment/utils/adhesion_types.dart';
import 'package:cgrae_enrollment/utils/file.dart';
import 'package:cgrae_enrollment/utils/gen_excel.dart';
import 'package:cgrae_enrollment/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_file_dialog/flutter_file_dialog.dart';
import 'package:archive/archive_io.dart';
import 'package:intl/intl.dart';

class HomeCardWhite extends StatefulWidget {
  String title = "";
  String number = "";
  String? indication = "";
  String? sTitle = null;
  Function? reload = null;
  bool? active = true;
  Function onPressed;

  HomeCardWhite({
    Key? key,
    required this.onPressed,
    required this.title,
    required this.number,
    this.sTitle,
    this.indication,
    this.reload,
    this.active,
  }) : super(key: key);

  @override
  State<HomeCardWhite> createState() => _HomeCardWhiteState();
}

class _HomeCardWhiteState extends State<HomeCardWhite> {
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
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 20,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: AppColors.softGreen,
              borderRadius: BorderRadius.all(Radius.circular(200)),
            ),
            child: Image.asset(
              'assets/images/icone_insciption.png',
              width: 70,
              height: 70,
              //fit: BoxFit.fitHeight,
            ),
          ),
          VSeparator(10),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HSeparator(10),
              AutoSizeText(
                "Réaliser un enrôlement",
                maxLines: 1,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: AppColors.primarySwatch,
                ),
              ),
              AutoSizeText(
                "Cliquez sur commencer pour enrôler une nouvelle personne",
                maxLines: 2,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
              HSeparator(10),
              Row(
                children: [
                  Spacer(),
                  SizedBox(
                    width: 160,
                    height: 40,
                    child: ElevatedButton(
                      style: buttonSolidSmall,
                      onPressed: () {
                        widget.onPressed();
                      },
                      child: const AutoSizeText(
                        'Commencer',
                        maxLines: 1,
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),
        ],
      ),
    );
  }
}
