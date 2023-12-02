// FormRightfulClaimant
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cgrae_enrollment/component/date_picker.dart';
import 'package:cgrae_enrollment/utils/app_store_types.dart';
import 'package:cgrae_enrollment/utils/store.dart';
import 'package:cgrae_enrollment/utils/upper_case_text_formatter.dart';
import 'package:flutter/material.dart';
import 'package:cgrae_enrollment/component/titles_form.dart';
import 'package:cgrae_enrollment/component/separator.dart';
import 'package:cgrae_enrollment/utils/styles.dart';
import 'package:cgrae_enrollment/component/by_propulse.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:cgrae_enrollment/component/form_label.dart';

class FormRightfulClaimant extends StatefulWidget {
  final Map<String, dynamic> Function(int) goto;
  final bool showControls;

  const FormRightfulClaimant(
      {Key? key, required this.goto, this.showControls: false})
      : super(key: key);

  @override
  State<FormRightfulClaimant> createState() => _FormRightfulClaimantState();
}

class _FormRightfulClaimantState extends State<FormRightfulClaimant> {
  bool canVerify = false;

  final Store store = Get.find();
  late AppStore appStore = store.appStore;
  late AppState appState = appStore.appState;
  late Adhesion adhesion = appStore.adhesion;

  late bool wantClaimantOne = appState.wantClaimantOne!;
  late bool wantClaimantTwo = appState.wantClaimantTwo!;

  final namesOneCtl = TextEditingController();
  final placeOfBirthOneCtl = TextEditingController();
  final contactOneCtl = TextEditingController();

  final namesTwoCtl = TextEditingController();
  final placeOfBirthTwoCtl = TextEditingController();
  final contactTwoCtl = TextEditingController();

  late bool isGovernmentEmployeeOne =
      adhesion.claimantOne!.isGovernmentEmployee!;

  late bool isGovernmentEmployeeTwo =
      adhesion.claimantTwo!.isGovernmentEmployee!;

  late String isGovernmentEmployeeOneValue =
      adhesion.claimantOne!.isGovernmentEmployee! ? 'oui' : 'non';

  late String isGovernmentEmployeeTwoValue =
      adhesion.claimantTwo!.isGovernmentEmployee! ? 'oui' : 'non';

  Map<String, dynamic> requiredField = {};

  @override
  void initState() {
    super.initState();

    namesOneCtl.text = adhesion.claimantOne!.nameEndSurname!;
    placeOfBirthOneCtl.text = adhesion.claimantOne!.placeOfBirth!;
    contactOneCtl.text = adhesion.claimantOne!.contact!;

    namesTwoCtl.text = adhesion.claimantTwo!.nameEndSurname!;
    placeOfBirthTwoCtl.text = adhesion.claimantTwo!.placeOfBirth!;
    contactTwoCtl.text = adhesion.claimantTwo!.contact!;

    namesOneCtl.addListener(() {
      updateClaimant(namesOneCtl.text, "nameEndSurname", "claimantOne");
    });
    placeOfBirthOneCtl.addListener(() {
      updateClaimant(placeOfBirthOneCtl.text, "placeOfBirth", "claimantOne");
    });
    contactOneCtl.addListener(() {
      updateClaimant(contactOneCtl.text, "contact", "claimantOne");
    });

    namesTwoCtl.addListener(() {
      updateClaimant(namesTwoCtl.text, "nameEndSurname", "claimantTwo");
    });
    placeOfBirthTwoCtl.addListener(() {
      updateClaimant(placeOfBirthTwoCtl.text, "placeOfBirth", "claimantTwo");
    });
    contactTwoCtl.addListener(() {
      updateClaimant(contactTwoCtl.text, "contact", "claimantTwo");
    });
  }

  @override
  void dispose() {
    namesOneCtl.dispose();
    placeOfBirthOneCtl.dispose();
    contactOneCtl.dispose();

    namesTwoCtl.dispose();
    placeOfBirthTwoCtl.dispose();
    contactTwoCtl.dispose();

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
                  widget.goto(1);
                },
                child: const Text('Précédent'),
              ),
            ),
            VSeparator(10),
            Expanded(
              child: ElevatedButton(
                style: buttonSoft,
                onPressed: () {
                  dynamic required = widget.goto(3);
                  print("ElevatedButton $required");
                  setState(() {
                    requiredField = required;
                    canVerify = true;
                  });
                },
                child: const Text('Suivant'),
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

    Widget ClaimantOne = Column(
      children: [
        // ***  N°2 ***
        HSeparator(20),
        Text("Ayant cause n°1 "),
        HSeparator(15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Label("Nom & Prénom(s) *"),
            TextField(
                inputFormatters: <TextInputFormatter>[
                  UpperCaseTextFormatter(),
                ],
                controller: namesOneCtl,
                decoration: textFieldStyle(
                  hintText: "Nom & Prénom(s)",
                  error: testField("claimantOne", "nameEndSurname"),
                )),
            HSeparator(15),
            Label("Date de naissance *"),
            DatePicker(
              hintText: "Date de naissance",
              onSelect: changeDateClaimantOne,
              defaultValue: adhesion.claimantOne!.dateOfBirth!,
              error: testField("claimantOne", "dateOfBirth"),
              lastDate: DateTime.now(),
            ),
            HSeparator(15),
            Label("Lieu de naissance *"),
            TextField(
                inputFormatters: <TextInputFormatter>[
                  UpperCaseTextFormatter(),
                ],
                controller: placeOfBirthOneCtl,
                decoration: textFieldStyle(
                  hintText: "Lieu de naissance",
                  error: testField("claimantOne", "placeOfBirth"),
                )),
            HSeparator(15),
            Label("Contact *"),
            TextField(
              inputFormatters: <TextInputFormatter>[
                UpperCaseTextFormatter(),
              ],
              controller: contactOneCtl,
              decoration: textFieldStyle(
                hintText: "Contact",
                error: testField("claimantOne", "contact"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 2,
                  child: AutoSizeText(
                    "Fonctionnaire / Agent de l'État *",
                    maxLines: 2,
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Radio(
                        value: "oui",
                        groupValue: isGovernmentEmployeeOneValue,
                        onChanged: (index) {
                          changeIsGovernmentEmployeeOne(index!);
                        },
                      ),
                      Expanded(
                        child: AutoSizeText("oui", maxLines: 1),
                      )
                    ],
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Radio(
                          value: "non",
                          groupValue: isGovernmentEmployeeOneValue,
                          onChanged: (index) {
                            changeIsGovernmentEmployeeOne(index!);
                          }),
                      Expanded(
                        child: AutoSizeText("non", maxLines: 1),
                      )
                    ],
                  ),
                  flex: 1,
                ),
              ],
            ),
            HSeparator(20),
          ],
        )
      ],
    );

    Widget ClaimantTwo = Column(
      children: [
        // ***  N°2 ***
        HSeparator(15),
        Text("Ayant cause n°2 "),
        HSeparator(15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Label("Nom & Prénom(s) *"),
            TextField(
              inputFormatters: <TextInputFormatter>[
                UpperCaseTextFormatter(),
              ],
              controller: namesTwoCtl,
              decoration: textFieldStyle(
                hintText: "Nom & Prénom(s)",
                error: testField("claimantTwo", "nameEndSurname"),
              ),
            ),
            HSeparator(15),
            Label("Date de naissance *"),
            DatePicker(
              hintText: "Date de naissance",
              onSelect: changeDateClaimantTwo,
              defaultValue: adhesion.claimantTwo!.dateOfBirth!,
              error: testField("claimantTwo", "dateOfBirth"),
              lastDate: DateTime.now(),
            ),
            HSeparator(15),
            Label("Lieu de naissance *"),
            TextField(
              inputFormatters: <TextInputFormatter>[
                UpperCaseTextFormatter(),
              ],
              controller: placeOfBirthTwoCtl,
              decoration: textFieldStyle(
                hintText: "Lieu de naissance",
                error: testField("claimantTwo", "placeOfBirth"),
              ),
            ),
            HSeparator(15),
            Label("Contact *"),
            TextField(
                inputFormatters: <TextInputFormatter>[
                  UpperCaseTextFormatter(),
                ],
                controller: contactTwoCtl,
                decoration: textFieldStyle(
                  hintText: "Contact",
                  error: testField("claimantTwo", "contact"),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 2,
                  child: AutoSizeText(
                    "Fonctionnaire / Agent de l'État *",
                    maxLines: 2,
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Radio(
                        value: "oui",
                        groupValue: isGovernmentEmployeeTwoValue,
                        onChanged: (index) {
                          changeIsGovernmentEmployeeTwo(index!);
                        },
                      ),
                      Expanded(
                        child: AutoSizeText("oui", maxLines: 1),
                      )
                    ],
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Radio(
                        value: "non",
                        groupValue: isGovernmentEmployeeTwoValue,
                        onChanged: (index) {
                          changeIsGovernmentEmployeeTwo(index!);
                        },
                      ),
                      Expanded(
                        child: AutoSizeText("non", maxLines: 1),
                      )
                    ],
                  ),
                  flex: 1,
                ),
              ],
            ),
          ],
        )
      ],
    );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          TitlesForm(
            title: "Inscription des ayants cause",
            sTitle: "Informations de l'adhérent dans le formulaire ci-dessous",
          ),
          HSeparator(20),

          // ***  Form fields ***

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Checkbox(
                      value: wantClaimantOne,
                      onChanged: (value) {
                        changeWantClaimant("wantClaimantOne", value);
                      },
                    ),
                    AutoSizeText(
                      'Ayant cause n°1',
                      maxLines: 1,
                    ),
                  ],
                ),
                flex: 1,
              ),
              Expanded(
                child: Row(
                  children: [
                    Checkbox(
                      value: wantClaimantTwo,
                      onChanged: wantClaimantOne
                          ? (value) {
                              changeWantClaimant("wantClaimantTwo", value);
                            }
                          : null,
                    ),
                    AutoSizeText(
                      'Ayant cause n°2',
                      maxLines: 1,
                    ),
                  ],
                ),
                flex: 1,
              ),
            ],
          ),

          if (wantClaimantOne) ClaimantOne,
          if (wantClaimantTwo) ClaimantTwo,
          // ***  Form fields end ***

          if (widget.showControls) controls,
        ],
      ),
    );
  }

  void updateClaimant(String value, String field, String claimant) {
    switch (claimant) {
      case "claimantOne":
        if (field == "nameEndSurname")
          adhesion.claimantOne!.nameEndSurname = value;
        if (field == "placeOfBirth") adhesion.claimantOne!.placeOfBirth = value;
        if (field == "contact") adhesion.claimantOne!.contact = value;
        break;
      case "claimantTwo":
        if (field == "nameEndSurname")
          adhesion.claimantTwo!.nameEndSurname = value;
        if (field == "placeOfBirth") adhesion.claimantTwo!.placeOfBirth = value;
        if (field == "contact") adhesion.claimantTwo!.contact = value;
        break;
    }
    store.updateAdhesion(adhesion);
  }

  void changeWantClaimant(String claimant, bool? value) {
    switch (claimant) {
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

  void changeDateClaimantOne(DateTime date) {
    String fDate = DateFormat('dd/MM/yyyy').format(date);
    adhesion.claimantOne!.dateOfBirth = fDate;
    store.updateAdhesion(adhesion);
  }

  void changeDateClaimantTwo(DateTime date) {
    String fDate = DateFormat('dd/MM/yyyy').format(date);
    adhesion.claimantTwo!.dateOfBirth = fDate;
    store.updateAdhesion(adhesion);
  }

  void changeIsGovernmentEmployeeOne(Object value) {
    bool v = value == "oui";
    setState(() {
      isGovernmentEmployeeOneValue = value as String;
      isGovernmentEmployeeOne = v;
    });
    adhesion.claimantOne!.isGovernmentEmployee = v;
    store.updateAdhesion(adhesion);
  }

  void changeIsGovernmentEmployeeTwo(Object value) {
    bool v = value == "oui";
    setState(() {
      isGovernmentEmployeeTwoValue = value as String;
      isGovernmentEmployeeTwo = v;
    });
    adhesion.claimantTwo!.isGovernmentEmployee = v;
    store.updateAdhesion(adhesion);
  }

  bool testField(String claimant, String field) {
    if (!canVerify) return false;

    Map<dynamic, dynamic>? _claimant = requiredField[claimant];
    if (_claimant == null) return false;

    bool? value = _claimant[field];
    if (value == null) return false;

    return canVerify && value;
  }
}
