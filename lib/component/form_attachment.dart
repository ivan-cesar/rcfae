// FormAttachment
import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cgrae_enrollment/component/select.dart';
import 'package:cgrae_enrollment/utils/app_store_types.dart';
import 'package:cgrae_enrollment/utils/list.dart';
import 'package:cgrae_enrollment/utils/option_type.dart';
import 'package:cgrae_enrollment/utils/store.dart';
import 'package:flutter/material.dart';
import 'package:cgrae_enrollment/component/titles_form.dart';
import 'package:cgrae_enrollment/component/separator.dart';
import 'package:cgrae_enrollment/utils/styles.dart';
import 'package:cgrae_enrollment/component/by_propulse.dart';
import 'package:cgrae_enrollment/component/file_field.dart';
import 'package:cgrae_enrollment/component/recap_form.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';

class FormAttachment extends StatefulWidget {
  final Map<String, dynamic> Function(int) goto;
  final bool showControls;

  const FormAttachment({Key? key, required this.goto, this.showControls: false})
      : super(key: key);

  @override
  State<FormAttachment> createState() => _FormAttachmentState();
}

class _FormAttachmentState extends State<FormAttachment> {
  final Store store = Get.find();

  late List<Option> attachmentsChoice = [];

  late AppStore appStore = store.appStore;
  late AppState appState = appStore.appState;
  late Adhesion adhesion = appStore.adhesion;
  late String _uuid = adhesion.uuid!;

  late bool wantClaimantOne = appState.wantClaimantOne!;
  late bool wantClaimantTwo = appState.wantClaimantTwo!;
  late String attachmentChoice = appState.attachmentChoice!;

  late dynamic file1 = appState.file1;
  late dynamic file2 = appState.file2;
  late dynamic file3 = appState.file3;
  late dynamic file4 = appState.file4;
  late dynamic file5 = appState.file5;

  String indication = "Selection un fichier";
  bool canSubmit = true;

  String nameOfFile(dynamic file) {
    return basename((file as File).path);
  }

  @override
  void initState() {
    super.initState();
    loadAttachmentChoiceJson();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget controls = Column(
      children: [
        HSeparator(50),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: buttonSoft,
                onPressed: () {
                  widget.goto(2);
                },
                child: const Text('Précedant'),
              ),
            ),
            VSeparator(10),
            Expanded(
              child: ElevatedButton(
                style: buttonSoft,
                onPressed: () {
                  recap(context);
                },
                child: const Text('Soumettre'),
              ),
            ),
          ],
        ),
        HSeparator(50),
        Align(
          alignment: Alignment.bottomCenter,
          child: ByPropulse(),
        ),
      ],
    );

    Widget claimantOneFile = Column(
      children: [
        HSeparator(20),
        Row(
          children: [
            Expanded(
              child: FileField(
                uuid: _uuid,
                fileId: "file4",
                filename: "extrait-1",
                title: "Extrait de naissance ayant-droit n°1",
                setFile: setFile,
                file: appState.file4,
                indication: file4 != null ? nameOfFile(file4) : indication,
                isSet: appState.file4 != null,
              ),
            ),
            //  , ,,
          ],
        ),
      ],
    );

    Widget claimantTwoFile = Column(
      children: [
        HSeparator(20),
        Row(
          children: [
            Expanded(
              child: FileField(
                uuid: _uuid,
                filename: "extrait-2",
                title: "Extrait  de naissance ayant-droit n°2",
                setFile: setFile,
                fileId: "file5",
                file: appState.file5,
                indication: file5 != null ? nameOfFile(file5)  : indication,
                isSet: appState.file5 != null,
              ),
            ),
            //  , ,,
          ],
        ),
      ],
    );

    // canSubmit
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          TitlesForm(
            title: "Merci de joindre à cette fiche d'adhésion",
            sTitle: "Informations de l'adhérent dans le formulaire ci-dessous",
          ),

          HSeparator(30),

          AutoSizeText(
            "Sélectionner l'un des documents dans la liste déroulante à joindre avec votre CNI",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),

          HSeparator(10),

          SelectField(
            hintText:
                "Sélectionner l'un des documents dans la liste déroulante à joindre avec votre CNI",
            items: attachmentsChoice,
            onSelect: changeAttachmentChoice,
            defaultValue: appState.attachmentChoice,
          ),

          HSeparator(10),
          if (!canSubmit)
            Text(
              "Rattachez l'un des documents à joindre avec votre CNI",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.pinkAccent,
              ),
            ),
          HSeparator(10),

          // ***  Form fields ***

          Row(
            children: [
              Expanded(
                child: FileField(
                  uuid: _uuid,
                  filename: "cni-recto",
                  setFile: setFile,
                  fileId: "file1",
                  title: "Pièce d'identité",
                  sTitle: "recto",
                  file: appState.file1,
                  indication: file1 != null ? nameOfFile(file1)  : indication,
                  isSet: appState.file1 != null,
                ),
              ),
              //  , ,,
            ],
          ),

          HSeparator(20),

          Row(
            children: [
              Expanded(
                child: FileField(
                  uuid: _uuid,
                  filename: "cni-verso",
                  setFile: setFile,
                  fileId: "file2",
                  title: "Pièce d'identité",
                  sTitle: "verso",
                  file: appState.file2,
                  indication: file2 != null ? nameOfFile(file2) : indication,
                  isSet: appState.file2 != null,
                ),
              ),
              //  , ,,
            ],
          ),
          if (attachmentChoice != "") HSeparator(20),
          if (attachmentChoice != "")
            Row(
              children: [
                Expanded(
                  child: FileField(
                    uuid: _uuid,
                    filename: "attachment-choice",
                    title: "${attachmentChoice}",
                    fileId: "file3",
                    setFile: setFile,
                    file: appState.file3,
                    indication: file3 != null ? nameOfFile(file3): indication,
                    isSet: appState.file3 != null,
                  ),
                ),
                //  , ,,
              ],
            ),

          if (wantClaimantOne) claimantOneFile,

          if (wantClaimantTwo) claimantTwoFile,

          // ***  Form fields end ***
          if (widget.showControls) controls,
        ],
      ),
    );
  }

  void recap(BuildContext context) {
    // Contrôle sur le 3e fichier a rattacher
    if (attachmentChoice == "") {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Rattachez l'un des documents à joindre avec votre CNI"),
      ));
      print(attachmentChoice.runtimeType);
      setState(() {
        canSubmit = false;
      });
      return;
    } else {
      setState(() {
        canSubmit = true;
      });
    }

    // Contrôle sur les fichiers
    print(file1);
    print(file2);
    print(file3);

    if (file1 == null || file2 == null || file3 == null) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Un/des fichier(s) à rattaché(s)"),
      ));
      setState(() {
        canSubmit = false;
      });
      return;
    }

    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return FractionallySizedBox(
            heightFactor: 0.85,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: RecapForm(
                goto: widget.goto,
              ),
            ),
          );
        });
  }

  void setFile(File? file, String? id) {
    // String filename = file != null ? basename(file.path) : indication;

    switch (id) {
      case "file1":
        appState.file1 = file;
        setState(() {
          file1 = file;
        });
        break;
      case "file2":
        appState.file2 = file;
        setState(() {
          file2 = file;
        });
        break;
      case "file3":
        appState.file3 = file;
        setState(() {
          file3 = file;
        });
        break;
      case "file4":
        appState.file4 = file;
        setState(() {
          file4 = file;
        });
        break;
      case "file5":
        appState.file5 = file;
        setState(() {
          file5 = file;
        });
        break;
    }

    store.updateAppState(appState);
  }

  void changeWantSetDoc(String docName, bool? value) {
    switch (docName) {
      case "wantClaimantOne":
        setState(() {
          wantClaimantOne = value!;
          if (value == false) wantClaimantTwo = value;
        });
        appState.wantClaimantOne = value;
        if (value == false) appState.wantClaimantTwo = value;
        break;
      case "wantClaimantTwo":
        setState(() {
          wantClaimantTwo = value!;
        });
        appState.wantClaimantTwo = value;
        break;
    }
    store.updateAppState(appState);
  }

  void changeAttachmentChoice(Option option) {
    print("option ${option.value}");
    setState(() {
      attachmentChoice = option.value;
    });
    appState.attachmentChoice = option.value;
    store.updateAppState(appState);
  }

  Future<void> loadAttachmentChoiceJson() async {
    final String data =
        await rootBundle.loadString('assets/data/attachment_choice.json');
    List<OptionType> _data = optionTypeFromJson(data);
    setState(() {
      attachmentsChoice =
          _data.map((e) => Option(e.value!, e.title!, e.value!)).toList();
    });
  }
}
