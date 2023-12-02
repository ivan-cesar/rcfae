// FormIdentification
import 'package:cgrae_enrollment/utils/app_store_types.dart';
import 'package:cgrae_enrollment/utils/city_type.dart';
import 'package:cgrae_enrollment/utils/marital_status_type.dart';
import 'package:cgrae_enrollment/utils/upper_case_text_formatter.dart';
import 'package:flutter/material.dart';
import 'package:cgrae_enrollment/component/titles_form.dart';
import 'package:cgrae_enrollment/component/separator.dart';
import 'package:cgrae_enrollment/component/date_picker.dart';
import 'package:cgrae_enrollment/component/select.dart';
import 'package:cgrae_enrollment/utils/styles.dart';
import 'package:cgrae_enrollment/utils/list.dart';
import 'package:cgrae_enrollment/component/by_propulse.dart';
import 'package:cgrae_enrollment/component/form_label.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:get/get.dart';
import 'package:cgrae_enrollment/utils/store.dart';
import 'package:cgrae_enrollment/utils/country_type.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:email_validator/email_validator.dart';
import 'package:time_machine/time_machine.dart';

class FormIndentification extends StatefulWidget {
  final Map<String, dynamic> Function(int) goto;
  final bool showControls;

  FormIndentification({
    Key? key,
    required this.goto,
    this.showControls: false,
  }) : super(key: key);

  @override
  State<FormIndentification> createState() => _FormIndentificationState();
}

class _FormIndentificationState extends State<FormIndentification> {
  Map<String, dynamic> requiredField = {};
  bool canVerify = false;

  List<Option> countries = [];
  List<Option> countriesCode = [];
  List<Option> maritalsStatus = [];
  List<Option> cities = [];

  final Store store = Get.find();
  late AppStore appStore = store.appStore;
  late AppState appState = appStore.appState;
  late Adhesion adhesion = appStore.adhesion;

  late String civility = adhesion.adherent!.civility!;
  late String country = adhesion.adherent!.country ?? "Côte d'Ivoire";
  DateTime dateOfBirth = DateTime.now();

  final familyNameCtl = TextEditingController();
  final firstNamesCtl = TextEditingController();
  final placeOfBirthCtl = TextEditingController();
  final employingOrganizationCtl = TextEditingController();
  final personnelNumberCtl = TextEditingController();
  final socialSecurityNumberCtl = TextEditingController();
  final numberOfChildrenCtl = TextEditingController();
  final telephoneContactCtl = TextEditingController();
  final emailCtl = TextEditingController();
  final cityCtl = TextEditingController();
  final areaCtl = TextEditingController();

  @override
  void initState() {
    super.initState();

    loadCountriesJson();
    loadCountriesCodeJson();
    loadMaritalStatusJson();
    loadCitiesJson();

    familyNameCtl.text = adhesion.adherent!.familyName!;
    firstNamesCtl.text = adhesion.adherent!.firstNames!;
    placeOfBirthCtl.text = adhesion.adherent!.placeOfBirth!;
    employingOrganizationCtl.text = adhesion.adherent!.employingOrganization!;
    personnelNumberCtl.text = adhesion.adherent!.personnelNumber!;
    socialSecurityNumberCtl.text = adhesion.adherent!.socialSecurityNumber!;
    numberOfChildrenCtl.text = adhesion.adherent!.numberOfChildren!.toString();
    telephoneContactCtl.text = adhesion.adherent!.telephoneContact!;
    emailCtl.text = adhesion.adherent!.email!;
    areaCtl.text = adhesion.adherent!.area!;
    cityCtl.text = adhesion.adherent!.city!;

    // Start listening to changes.
    familyNameCtl.addListener(() {
      updateAdherent(familyNameCtl.text, "familyName");
    });

    firstNamesCtl.addListener(() {
      updateAdherent(firstNamesCtl.text, "firstNames");
    });

    placeOfBirthCtl.addListener(() {
      updateAdherent(placeOfBirthCtl.text, "placeOfBirth");
    });

    employingOrganizationCtl.addListener(() {
      updateAdherent(employingOrganizationCtl.text, "employingOrganization");
    });

    personnelNumberCtl.addListener(() {
      updateAdherent(personnelNumberCtl.text, "personnelNumber");
    });

    socialSecurityNumberCtl.addListener(() {
      updateAdherent(socialSecurityNumberCtl.text, "socialSecurityNumber");
    });

    numberOfChildrenCtl.addListener(() {
      updateAdherent(numberOfChildrenCtl.text, "numberOfChildren");
    });

    telephoneContactCtl.addListener(() {
      updateAdherent(telephoneContactCtl.text, "telephoneContact");
    });

    emailCtl.addListener(() {
      updateAdherent(emailCtl.text, "email");
    });

    cityCtl.addListener(() {
      updateAdherent(cityCtl.text, "city");
    });

    areaCtl.addListener(() {
      updateAdherent(areaCtl.text, "area");
    });
  }

  @override
  void dispose() {
    familyNameCtl.dispose();
    firstNamesCtl.dispose();
    placeOfBirthCtl.dispose();
    employingOrganizationCtl.dispose();
    personnelNumberCtl.dispose();
    socialSecurityNumberCtl.dispose();
    numberOfChildrenCtl.dispose();
    telephoneContactCtl.dispose();
    emailCtl.dispose();
    areaCtl.dispose();
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
                  // Navigator.pop(context);
                  Navigator.of(context).pop(true);
                },
                child: const Text('Retour'),
              ),
            ),
            VSeparator(10),
            Expanded(
              child: ElevatedButton(
                style: buttonSoft,
                onPressed: () {
                  dynamic required = widget.goto(1);
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

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitlesForm(
            title: "Inscription de l'adhérent",
            sTitle: "Informations de l'adhérent dans le formulaire ci-dessous",
          ),
          HSeparator(10),

          // ***  Form fields  ***

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Radio(
                      fillColor: errorRadios(testField("civility")),
                      value: "Madame",
                      groupValue: civility,
                      onChanged: (value) {
                        changeCivility(value.toString());
                      },
                    ),
                    Expanded(
                      child: AutoSizeText(
                        'Madame',
                        style: TextStyle(fontSize: 12),
                        maxLines: 1,
                      ),
                    )
                  ],
                ),
                flex: 1,
              ),
              Expanded(
                child: Row(
                  children: [
                    Radio(
                      fillColor: errorRadios(testField("civility")),
                      value: "Monsieur",
                      groupValue: civility,
                      onChanged: (value) {
                        changeCivility(value.toString());
                      },
                    ),
                    Expanded(
                      child: AutoSizeText(
                        'Monsieur',
                        style: TextStyle(fontSize: 12),
                        maxLines: 1,
                      ),
                    )
                  ],
                ),
                flex: 1,
              ),
              Expanded(
                flex: 1,
                child: Text(""),
              )
            ],
          ),
          Label("Nom *"),
          TextField(
            decoration: textFieldStyle(
              hintText: "Nom",
              error: testField("familyName"),
            ),
            inputFormatters: <TextInputFormatter>[
              UpperCaseTextFormatter(),
            ],
            controller: familyNameCtl,
          ),
          HSeparator(15),
          Label("Prénom *"),
          TextField(
            decoration: textFieldStyle(
              hintText: "Prénom",
              error: testField("firstNames"),
            ),
            inputFormatters: <TextInputFormatter>[
              UpperCaseTextFormatter(),
            ],
            controller: firstNamesCtl,
          ),
          HSeparator(15),
          Label("Date de naissance *"),
          DatePicker(
            hintText: "Date de naissance",
            defaultValue: adhesion.adherent!.dateOfBirth!,
            onSelect: changeDateOfBirth,
            error: testField("dateOfBirth"),
            lastDate: DateTime.now(),
          ),
          HSeparator(15),
          Label("Lieu de naissance *"),
          TextField(
            decoration: textFieldStyle(
              hintText: "Lieu de naissance",
              error: testField("placeOfBirth"),
            ),
            inputFormatters: <TextInputFormatter>[
              UpperCaseTextFormatter(),
            ],
            controller: placeOfBirthCtl,
          ),
          HSeparator(15),
          Label("Organisme employeur *"),
          TextField(
            decoration: textFieldStyle(
              hintText: "Organisme employeur",
              error: testField("employingOrganization"),
            ),
            inputFormatters: <TextInputFormatter>[
              UpperCaseTextFormatter(),
            ],
            controller: employingOrganizationCtl,
          ),
          HSeparator(15),
          Label("Matricule *"),
          TextField(
            decoration: textFieldStyle(
              hintText: "Matricule",
              error: testField("personnelNumber"),
            ),
            inputFormatters: <TextInputFormatter>[
              UpperCaseTextFormatter(),
              MaskedInputFormatter('#######'),
            ],
            controller: personnelNumberCtl,
          ),
          HSeparator(15),
          Label("N° de sécurité sociale"),
          TextField(
            decoration: textFieldStyle(
              hintText: "N° de sécurité sociale",
              error: testField("socialSecurityNumber"),
            ),
            inputFormatters: <TextInputFormatter>[
              UpperCaseTextFormatter(),
            ],
            controller: socialSecurityNumberCtl,
          ),
          HSeparator(15),
          if (maritalsStatus.length > 0)
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Label("Situation matrimoniale *"),
                SelectField(
                  hintText: "Situation matrimoniale",
                  items: maritalsStatus,
                  defaultValue: adhesion.adherent!.maritalStatus!,
                  onSelect: changeMaritalStatus,
                  error: testField("maritalStatus"),
                )
              ],
            ),
          HSeparator(15),
          Label("Nombre d'enfants *"),
          TextField(
            decoration: textFieldStyle(
              hintText: "Nombre d'enfants",
              error: testField("numberOfChildren"),
            ),
            controller: numberOfChildrenCtl,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
          HSeparator(30),
          Text("Téléphone"),
          HSeparator(10),
          if (countriesCode.length > 0)
            SelectField(
              hintText: "Indicatif téléphonique *",
              defaultValue: adhesion.adherent!.countryCode!,
              items: countriesCode,
              onSelect: changeCountryCode,
              error: testField("countryCode"),
            ),
          HSeparator(15),
          TextField(
            decoration: textFieldStyle(
              hintText: "Téléphone *",
              error: testField("telephoneContact"),
            ),
            controller: telephoneContactCtl,
            keyboardType: TextInputType.number,
            autocorrect: false,
            inputFormatters: [MaskedInputFormatter('##########')],
            //inputFormatters: <TextInputFormatter>[
            //  FilteringTextInputFormatter.digitsOnly
            //],
          ),
          HSeparator(30),
          Text("Email"),
          HSeparator(10),
          TextFormField(
            decoration: textFieldStyle(
              hintText: "Email",
              error: testField("email"),
            ),
            inputFormatters: <TextInputFormatter>[
              UpperCaseTextFormatter(),
            ],
            controller: emailCtl,
          ),
          HSeparator(30),
          Text("Adresse  géographique"),
          HSeparator(10),
          if (countries.length > 0)
            SelectField(
              hintText: "Pays *",
              items: countries,
              defaultValue: adhesion.adherent!.country!,
              onSelect: changeCountry,
              error: testField("country"),
            ),
          HSeparator(15),
          if (cities.length > 0 && country == "CÔTE D'IVOIRE")
            SelectField(
              hintText: "Ville/Commune *",
              defaultValue: adhesion.adherent!.city!,
              items: cities,
              onSelect: changeCity,
              error: testField("city"),
            ),
          if (country != "CÔTE D'IVOIRE")
            TextField(
              decoration: textFieldStyle(
                hintText: "Ville/Commune *",
                error: testField("city"),
              ),
              inputFormatters: <TextInputFormatter>[
                UpperCaseTextFormatter(),
              ],
              controller: cityCtl,
            ),
          HSeparator(15),
          TextField(
            decoration: textFieldStyle(
              hintText: "Quartier/Rue *",
              error: testField("area"),
            ),
            inputFormatters: <TextInputFormatter>[
              UpperCaseTextFormatter(),
            ],
            controller: areaCtl,
          ),

          // ***  Form fields end ***

          if (widget.showControls) controls,
        ],
      ),
    );
  }

  Future<void> loadCountriesJson() async {
    final String data =
        await rootBundle.loadString('assets/data/countries.json');
    List<Country> _countries = countryFromJson(data);
    setState(() {
      countries = _countries
          .map((e) => Option(
                e.value!.toUpperCase(),
                e.title!.toUpperCase(),
                e.id!.toUpperCase(),
              ))
          .toList();
    });
  }

  Future<void> loadCountriesCodeJson() async {
    final String data =
        await rootBundle.loadString('assets/data/countries_code.json');
    List<Country> _codes = countryFromJson(data);
    setState(() {
      countriesCode = _codes
          .map((e) => Option(
                e.value!.toUpperCase(),
                e.value!.toUpperCase(),
                e.title!.toUpperCase(),
              ))
          .toList();
    });
  }

  Future<void> loadMaritalStatusJson() async {
    final String data =
        await rootBundle.loadString('assets/data/maritals_status.json');
    List<MaritalStatus> _status = maritalStatusFromJson(data);
    List<Option> _options = _status
        .map((e) => Option(
              e.value!.toUpperCase(),
              e.title!.toUpperCase(),
              e.value!.toUpperCase(),
            ))
        .toList();
    setState(() {
      maritalsStatus = _options;
    });
  }

  Future<void> loadCitiesJson() async {
    final String data = await rootBundle.loadString('assets/data/cities.json');
    List<City> _cities = cityFromJson(data);
    setState(() {
      cities = _cities
          .map((e) => Option(
                e.value!.toUpperCase(),
                e.title!.toUpperCase(),
                e.value!.toUpperCase(),
              ))
          .toList();
    });
  }

  void updateAdherent(String value, String field) {
    switch (field) {
      case "familyName":
        adhesion.adherent!.familyName = value;
        break;
      case "firstNames":
        adhesion.adherent!.firstNames = value;
        break;
      case "placeOfBirth":
        adhesion.adherent!.placeOfBirth = value;
        break;
      case "employingOrganization":
        adhesion.adherent!.employingOrganization = value;
        break;
      case "personnelNumber":
        adhesion.adherent!.personnelNumber = value;
        break;
      case "socialSecurityNumber":
        adhesion.adherent!.socialSecurityNumber = value;
        break;
      case "numberOfChildren":
        adhesion.adherent!.numberOfChildren = int.tryParse(value);
        break;
      case "telephoneContact":
        adhesion.adherent!.telephoneContact = value;
        break;
      case "email":
        adhesion.adherent!.email = value;
        break;
      case "city":
        adhesion.adherent!.city = value;
        break;
      case "area":
        adhesion.adherent!.area = value;
        break;
    }
    store.updateAdhesion(adhesion);
  }

  void changeCivility(String value) {
    setState(() {
      civility = value;
    });
    adhesion.adherent!.civility = value;
    store.updateAdhesion(adhesion);
  }

  void changeDateOfBirth(DateTime date) {
    String fDate = DateFormat('dd/MM/yyyy').format(date);
    setState(() {
      dateOfBirth = date;
    });
    adhesion.adherent!.dateOfBirth = fDate;
    store.updateAdhesion(adhesion);
  }

  void changeMaritalStatus(Option option) {
    adhesion.adherent!.maritalStatus = option.value;
    store.updateAdhesion(adhesion);
  }

  void changeCountry(Option option) {
    adhesion.adherent!.country = option.value;
    setState(() {
      country = option.value;
    });
    store.updateAdhesion(adhesion);
  }

  void changeCity(Option option) {
    adhesion.adherent!.city = option.value;
    store.updateAdhesion(adhesion);
  }

  void changeCountryCode(Option option) {
    adhesion.adherent!.countryCode = option.value;
    store.updateAdhesion(adhesion);
  }

  bool testField(String field) {
    if (!canVerify) return false;

    if (field == "dateOfBirth") {
      LocalDate a = LocalDate.today();
      LocalDate b = LocalDate.dateTime(dateOfBirth);
      Period diff = a.periodSince(b);

      print("dateOfBirth");
      print(dateOfBirth);
      print("years: ${diff.years}; months: ${diff.months}; days: ${diff.days}");
      return (diff.years > 65 || diff.years < 18);
    }

    if (field == "personnelNumber") {
      RegExp matFormat = RegExp(r'^[0-9]{6}[a-zA-Z]{1}$');
      bool match = matFormat.hasMatch(personnelNumberCtl.text);
      return !match;
    }

    if (field == "email") {
      if (emailCtl.text != "") {
        bool match = EmailValidator.validate(emailCtl.text);
        return !match;
      }
    }

    bool? value = requiredField[field];
    if (value == null) return false;
    return canVerify && value;
  }
}

// ** generate liste **
// final indicatifs = List<Option>.generate(0, (i) => Option('$i', 'Sender $i', 'Message body $i'));
