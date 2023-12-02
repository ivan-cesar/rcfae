import 'dart:io';

import 'package:cgrae_enrollment/utils/app_store_types.dart';
import 'package:cgrae_enrollment/utils/store.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:cgrae_enrollment/utils/styles.dart';
import 'package:cgrae_enrollment/component/app_top_logo.dart';
import 'package:cgrae_enrollment/component/form_identification.dart';
import 'package:cgrae_enrollment/component/form_additional.dart';
import 'package:cgrae_enrollment/component/form_rightful_claimant.dart';
import 'package:cgrae_enrollment/component/form_attachment.dart';
import 'package:cgrae_enrollment/component/enrollment_end.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:time_machine/time_machine.dart';

class EnrollmentForm extends StatefulWidget {
  const EnrollmentForm({super.key, required this.title});

  final String title;

  @override
  State<EnrollmentForm> createState() => _EnrollmentFormState();
}

class _EnrollmentFormState extends State<EnrollmentForm> {
  final Store store = Get.find();
  late AppStore appStore = store.appStore;
  late AppState appState = appStore.appState;
  late Adhesion adhesion = appStore.adhesion;
  late Adherent adherent = adhesion.adherent!;
  late AdhesionAdditional additional = adhesion.additional!;
  late Claimant? claimantOne = adhesion.claimantOne;
  late Claimant? claimantTwo = adhesion.claimantTwo;
  late AdhesionRequired adhesionRequired = appStore.adhesionRequired;
  late String uuid = adhesion.uuid!;

  int activeStep = 0;
  List files = [];

  late List<Widget> contents = [
    FormIndentification(
      goto: goto,
      showControls: true,
    ),
    FormAdditional(
      goto: goto,
      showControls: true,
    ),
    FormRightfulClaimant(
      goto: goto,
      showControls: true,
    ),
    FormAttachment(
      goto: goto,
      showControls: true,
    ),
    FormAttachment(
      goto: goto,
      showControls: true,
    ),
    EnrollmentEnd(
      title: "",
      goto: goto,
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  //  String baseDir = await getBaseDir();
  //   String expoDir = await getExportDir();
  //
  //   if (!(await File(baseDir).exists())) {
  //     File f = await File('${baseDir}/init.txt').create(recursive: true);
  //     await f.delete();
  //   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        // color: Colors.blueAccent,
        constraints: BoxConstraints(
          minHeight: double.infinity,
          minWidth: double.infinity,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTopLogo(),
              EasyStepper(
                  activeStep: activeStep,
                  lineLength: 35,
                  lineDotRadius: 2,
                  lineSpace: 4,
                  lineType: LineType.normal,
                  lineColor: AppColors.softGreen[700],
                  //unreachedStepBackgroundColor: AppColors.softGreen,
                  unreachedStepTextColor: AppColors.softGreen[700],
                  unreachedStepIconColor: AppColors.softGreen[700],
                  unreachedStepBorderColor: AppColors.softGreen[700],
                  activeStepTextColor: AppColors.primarySwatch,
                  activeStepBorderColor: AppColors.primarySwatch,
                  activeStepBorderType: BorderType.normal,
                  activeStepIconColor: AppColors.primarySwatch,
                  finishedStepBackgroundColor: AppColors.primarySwatch,
                  finishedStepTextColor: AppColors.primarySwatch,
                  borderThickness: 4,
                  padding: 15,
                  stepRadius: 24,
                  showLoadingAnimation: false,
                  //loadingAnimation: 'assets/loading_circle.json',
                  steps: const [
                    EasyStep(
                      icon: Icon(Icons.looks_one_rounded),
                      finishIcon: Icon(Icons.check),
                      title: 'Identification adhérent',
                      lineText: '',
                    ),
                    EasyStep(
                      icon: Icon(Icons.looks_two_rounded),
                      finishIcon: Icon(Icons.check),
                      title: 'Cotisation Additionnelle',
                      lineText: '',
                    ),
                    EasyStep(
                      icon: Icon(Icons.looks_3_rounded),
                      finishIcon: Icon(Icons.check),
                      title: 'Ayants cause',
                      lineText: '',
                    ),
                    EasyStep(
                      icon: Icon(Icons.looks_4_rounded),
                      finishIcon: Icon(Icons.check),
                      title: 'Pièces jointes',
                    ),
                  ],
                  onStepReached: (index) {
                    //setState(() => activeStep = index);
                  }),
              contents[activeStep]
            ],
          ),
        ),
      )),
    );
  }

  Map<String, dynamic> goto(int page) {
    DateTime _now = DateTime.now();
    DateTime now = _now.subtract(Duration(
      hours: _now.hour,
      minutes: _now.minute,
      seconds: _now.second,
      milliseconds: _now.millisecond,
      microseconds: _now.microsecond,
    ));

    bool canNext = true;
    Map<String, dynamic> _required = {};

    switch (page) {
      case 1:
        Map<String, dynamic> _adherent = adherent.toJson();

        for (var key in adhesionRequired.adherent.keys) {
          if (key == "email") {
            var email = _adherent[key];
            if (_adherent[key] != "") {
              bool match = EmailValidator.validate(email);
              canNext = canNext && match;
            }
          }

          if (key == "personnelNumber") {
            RegExp matFormat = RegExp(r'^[0-9]{6}[a-zA-Z]{1}$');
            bool match = matFormat.hasMatch(_adherent[key]);
            canNext = canNext && match;
          }

          if (key == "dateOfBirth" &&
              _adherent[key] != null &&
              _adherent[key] != "") {
            DateTime? dateOfBirth =
                new DateFormat('dd/MM/yyyy').parse(_adherent[key]);

            if (dateOfBirth == null) {
              _required[key] = true;
              canNext = canNext && false;
            } else if (dateOfBirth.isAfter(now)) {
              _required[key] = true;
              canNext = canNext && false;
            } else {
              LocalDate a = LocalDate.today();
              LocalDate b = LocalDate.dateTime(dateOfBirth);
              Period diff = a.periodSince(b);

              // print(
              //     "years: ${diff.years}; months: ${diff.months}; days: ${diff.days}");

              var match = diff.years > 65 || diff.years < 18;
              canNext = canNext && !match;
            }
          }

          if (adhesionRequired.adherent[key] == true) {
            if (key == "email" &&
                _adherent[key] != null &&
                _adherent[key] != "") {
              bool isEmail = !EmailValidator.validate(_adherent[key]);
              _required[key] = isEmail;
              canNext = canNext && !isEmail;
            } else if (_adherent[key] == null || _adherent[key] == "") {
              _required[key] = true;
              canNext = canNext && false;
            }
          }
        }

        break;
      case 2:
        if (appState.wantAdditional == "") {
          _required["wantAdditional"] = true;
          canNext = canNext && false;
        } else if (appState.wantAdditional == "oui") {
          Map<String, dynamic> _additional = additional.toJson();
          for (var key in adhesionRequired.additional.keys) {
            if (key == "effectiveDate" &&
                _additional[key] != null &&
                _additional[key] != "") {
              DateTime? effectiveDate =
                  new DateFormat('dd/MM/yyyy').parse(_additional[key]);

              if (effectiveDate == null) {
                _required[key] = true;
                canNext = canNext && false;
              } else if (effectiveDate.isBefore(now)) {
                _required[key] = true;
                canNext = canNext && false;
              }
            } else if (key == "contributionAmount") {
              if (_additional[key] == null) {
                _required["contributionAmount"] = true;
                continue;
              }
              if (_additional[key] == "") {
                _required["contributionAmount"] = true;
                continue;
              }
              int amount = _additional[key].runtimeType == "string"
                  ? int.parse(_additional[key])
                  : _additional[key];

              if (amount < 5000) {
                _required[key] = true;
                canNext = canNext && false;
              }
            } else {
              if (adhesionRequired.additional[key] == true) {
                if (_additional[key] == null || _additional[key] == "") {
                  _required[key] = true;
                  canNext = canNext && false;
                }
              }
            }
          }
        }

        break;
      case 3:
        if (appState.wantClaimantOne == true) {
          _required["claimantOne"] = {};
          Map<String, dynamic> _claimantOne = claimantOne!.toJson();
          for (var key in adhesionRequired.claimant.keys) {
            if (key == "dateOfBirth" &&
                _claimantOne[key] != null &&
                _claimantOne[key] != "") {
              DateTime? dateOfBirth =
                  new DateFormat('dd/MM/yyyy').parse(_claimantOne[key]);
              if (dateOfBirth == null) {
                _required["claimantOne"][key] = true;
                canNext = canNext && false;
              } else if (dateOfBirth.isAfter(now)) {
                _required["claimantOne"][key] = true;
                canNext = canNext && false;
              }
            }

            if (adhesionRequired.claimant[key] == true) {
              if (_claimantOne[key] == null || _claimantOne[key] == "") {
                _required["claimantOne"][key] = true;
                canNext = canNext && false;
              }
            }
          }

          if (appState.wantClaimantTwo == true) {
            _required["claimantTwo"] = {};
            Map<String, dynamic> _claimantTwo = claimantTwo!.toJson();
            for (var key in adhesionRequired.claimant.keys) {
              if (key == "dateOfBirth" &&
                  _claimantTwo[key] != null &&
                  _claimantTwo[key] != "") {
                DateTime? dateOfBirth =
                    new DateFormat('dd/MM/yyyy').parse(_claimantTwo[key]);
                if (dateOfBirth == null) {
                  _required["claimantTwo"][key] = true;
                  canNext = canNext && false;
                } else if (dateOfBirth.isAfter(now)) {
                  _required["claimantTwo"][key] = true;
                  canNext = canNext && false;
                }
              }

              if (adhesionRequired.claimant[key] == true) {
                if (_claimantTwo[key] == null || _claimantTwo[key] == "") {
                  _required["claimantTwo"][key] = true;
                  canNext = canNext && false;
                }
              }
            }
          }
        }

        break;

      case 4:
        break;
    }
    if (canNext) {
      setState(() {
        activeStep = page;
      });
    }
    return _required;
  }
}
