// RecapForm
import 'dart:convert';
import 'dart:io';
import 'package:cgrae_enrollment/component/form_additional.dart';
import 'package:cgrae_enrollment/component/form_attachment.dart';
import 'package:cgrae_enrollment/component/form_identification.dart';
import 'package:cgrae_enrollment/component/form_rightful_claimant.dart';
import 'package:cgrae_enrollment/utils/app_store_types.dart';
import 'package:cgrae_enrollment/utils/file.dart';
import 'package:cgrae_enrollment/utils/gen_excel.dart';
import 'package:cgrae_enrollment/utils/store.dart';
import 'package:flutter/material.dart';
import 'package:cgrae_enrollment/component/titles_recap.dart';
import 'package:cgrae_enrollment/component/separator.dart';
import 'package:cgrae_enrollment/utils/styles.dart';
import 'package:cgrae_enrollment/component/by_propulse.dart';
import 'package:cgrae_enrollment/utils//names.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:another_flushbar/flushbar.dart';

class RecapForm extends StatefulWidget {
  final Map<String, dynamic> Function(int) goto;

  RecapForm({Key? key, required this.goto}) : super(key: key);

  @override
  State<RecapForm> createState() => _RecapFormState();
}

class _RecapFormState extends State<RecapForm> {
  final Store store = Get.find();
  late AppStore appStore = store.appStore;
  late Adhesion adhesion = appStore.adhesion;
  late AppState appState = appStore.appState;
  late UserConnected userConnected = appStore.userConnected;
  late String uuid = adhesion.uuid!;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        children: [
          HSeparator(40),

          TitlesRecap(
            title: "Récapitulatif",
            sTitle: "Récapitulatif des informations",
          ),
          // ***  Form adhérent ***
          HSeparator(40),
          FormIndentification(goto: widget.goto),
          // ***  Form Cotisation ***
          HSeparator(40),
          FormAdditional(goto: widget.goto),
          // ***  Form ayants ***
          HSeparator(50),
          FormRightfulClaimant(goto: widget.goto),
          // ***  Form joindre ***
          HSeparator(40),
          FormAttachment(goto: widget.goto),
          // ***  Form fields end ***
          HSeparator(50),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: buttonSoft,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Annuler'),
                  ),
                ),
                VSeparator(10),
                Expanded(
                  child: ElevatedButton(
                    style: buttonSoft,
                    onPressed: () async {
                      bool ok = await saveData();
                      if (ok) {
                        Navigator.pop(context);
                        widget.goto(5);
                      }
                    },
                    child: const Text('Valider'),
                  ),
                ),
              ],
            ),
          ),
          HSeparator(50),

          Align(
            alignment: Alignment.bottomCenter,
            child: ByPropulse(),
          ),
        ],
      ),
    ));
  }

  Adhesion? canSave() {
    String _uuid = adhesion.uuid!;
    String _actor = userConnected.username ?? adhesion.actor ?? "no actor";

    print("_actor");
    print(_actor);

    Adherent adherent = adhesion.adherent!;
    AdhesionAdditional? additional = adhesion.additional!;
    Claimant? claimantOne = adhesion.claimantOne!;
    Claimant? claimantTwo = adhesion.claimantTwo!;

    DateTime now = new DateTime.now();
    String nowString = now.toUtc().toIso8601String();

    if (adherent.country != "") {
      adherent.geographicalAddress = adherent.country;
    }
    if (adherent.city != "") {
      adherent.geographicalAddress =
          "${adherent.geographicalAddress}, ${adherent.city}";
    }
    if (adherent.area != "") {
      adherent.geographicalAddress =
          "${adherent.geographicalAddress}, ${adherent.area}";
    }

    if (adherent.numberOfChildren == "") {
      adherent.numberOfChildren = int.tryParse(adherent.numberOfChildren) ?? 0;
    }

    if (additional.contributionAmount == "") {
      additional.contributionAmount =
          int.tryParse(additional.contributionAmount) ?? 0;
    }

    // print("canSave:after -> ${StackTrace.current}");
    // print(
    //     "canSave:contributionAmount.runtimeType -> ${additional.contributionAmount.runtimeType}");
    // print(
    //     "canSave:contributionAmount < 5000 -> ${additional.contributionAmount < 5000}");

    if (additional.contributionAmount < 5000) {
      _syncError("Le montant de la cotisation additionnelle est inférieur à 5 000");
      return null;
    }

    if (additional.effectiveDate == "") {
      additional.effectiveDate = nowString;
    } else {
      DateTime tempDate = additional.effectiveDate!.length == 10
          ? new DateFormat("dd/MM/yyyy").parse(additional.effectiveDate!)
          : DateTime.parse(additional.effectiveDate!);
      additional.effectiveDate = tempDate.toUtc().toIso8601String();
    }

    if (adherent.dateOfBirth == "") {
      adherent.dateOfBirth = nowString;
    } else {
      DateTime tempDate = adherent.dateOfBirth!.length == 10
          ? new DateFormat("dd/MM/yyyy").parse(adherent.dateOfBirth!)
          : DateTime.parse(adherent.dateOfBirth!);

      adherent.dateOfBirth = tempDate.toUtc().toIso8601String();
    }

    if (claimantOne.dateOfBirth == "") {
      claimantOne.dateOfBirth = nowString;
    } else {
      DateTime tempDate = claimantOne.dateOfBirth!.length == 10
          ? new DateFormat("dd/MM/yyyy").parse(claimantOne.dateOfBirth!)
          : DateTime.parse(claimantOne.dateOfBirth!);
      claimantOne.dateOfBirth = tempDate.toUtc().toIso8601String();
    }

    if (claimantTwo.dateOfBirth == "") {
      claimantTwo.dateOfBirth = nowString;
    } else {
      DateTime tempDate = claimantTwo.dateOfBirth!.length == 10
          ? new DateFormat("dd/MM/yyyy").parse(claimantTwo.dateOfBirth!)
          : DateTime.parse(claimantTwo.dateOfBirth!);
      claimantTwo.dateOfBirth = tempDate.toUtc().toIso8601String();
    }

    if (additional.contributionAmount == 0) additional = null;

    if (claimantOne.nameEndSurname == "") {
      claimantOne = null;
    } else {
      var fullNames = names(claimantOne.nameEndSurname!);
      claimantOne.familyName = fullNames[0];
      claimantOne.firstNames = fullNames[1];
    }

    if (claimantTwo.nameEndSurname == "") {
      claimantTwo = null;
    } else {
      var fullNames = names(claimantTwo.nameEndSurname!);
      claimantTwo.familyName = fullNames[0];
      claimantTwo.firstNames = fullNames[1];
    }

    Adhesion ads = new Adhesion(
      uuid: _uuid,
      actor: _actor,
      adherent: adherent,
      additional: additional,
      claimantOne: claimantOne,
      claimantTwo: claimantTwo,
    );

    print("Adhesion");
    print(ads.toJson());

    return ads;
  }

  Future<bool> saveData() async {
    try {
      String dir = uuid;
      String filename = "data.json";
      String filenameExcel = "data.xlsx";

      String path = await getFilePath(dir, filename);
      String pathExcel = await getFilePath(dir, filenameExcel);
      String uuidDir = await getFilePath(dir, "");

      uuidDir = uuidDir.substring(0, uuidDir.length - 1);

      if (!(await File(uuidDir).exists())) {
        print("uuidDir $uuidDir");
        print("uuid $uuid");
        File f = await File('${uuidDir}/init.txt').create(recursive: true);
        await f.delete();
      }

      Adhesion? ads = canSave();
      if (ads == null) return false;

      String data = jsonEncode(ads.toJson());
      print("saveData:after -> jsonEncode");
      List<int> bytes = await genExcel(ads);
      print("saveData:after -> genExcel");

      await writeBytesInFile(pathExcel, bytes);
      await writeInFile(path, data);

      return true;
    } catch (e) {
      print("saveData -> error");
      print(e);
      return false;
    }
  }

  void _syncError(String text) async {
    // ScaffoldMessenger.of(context).removeCurrentSnackBar();
    // ScaffoldMessenger.of(context).clearSnackBars();
    // ScaffoldMessenger.of(context).showSnackBar(
    //   SnackBar(
    //     backgroundColor: Colors.redAccent,
    //     content: Text(
    //       text,
    //       textAlign: TextAlign.center,
    //     ),
    //   ),
    // );

    await Flushbar(
      title: 'Validation',
      message: '$text',
      duration: Duration(seconds: 5),
      borderRadius: BorderRadius.circular(20),
      margin: EdgeInsets.all(8),
      // leftBarIndicatorColor: Colors.black87,
      backgroundColor: Colors.red,
      icon: Icon(
        Icons.warning,
        size: 28.0,
        color: Colors.white,
      ),
      // flushbarPosition: FlushbarPosition.TOP,
      isDismissible: false,
    ).show(context);

  }
}
