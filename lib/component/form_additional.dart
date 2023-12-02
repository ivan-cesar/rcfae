// FormAdditional
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cgrae_enrollment/component/date_picker.dart';
import 'package:cgrae_enrollment/component/select.dart';
import 'package:cgrae_enrollment/utils/app_store_types.dart';
import 'package:cgrae_enrollment/utils/list.dart';
import 'package:cgrae_enrollment/utils/option_type.dart';
import 'package:cgrae_enrollment/utils/store.dart';
import 'package:cgrae_enrollment/utils/thousands_separator.dart';
import 'package:flutter/material.dart';
import 'package:cgrae_enrollment/component/titles_form.dart';
import 'package:cgrae_enrollment/component/separator.dart';
import 'package:cgrae_enrollment/utils/styles.dart';
import 'package:cgrae_enrollment/component/by_propulse.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:cgrae_enrollment/component/form_label.dart';
import 'package:cgrae_enrollment/utils/upper_case_text_formatter.dart';


class FormAdditional extends StatefulWidget {
  final Map<String, dynamic> Function(int) goto;
  final bool showControls;

  const FormAdditional({Key? key, required this.goto, this.showControls: false})
      : super(key: key);

  @override
  State<FormAdditional> createState() => _FormAdditionalState();
}

class _FormAdditionalState extends State<FormAdditional> {
  late List<Option> periodicities = [];
  late List<Option> paymentMethods = [];
  bool canVerify = false;

  final Store store = Get.find();
  late AppStore appStore = store.appStore;
  late Adhesion adhesion = appStore.adhesion;
  late AppState appState = appStore.appState;
  late String? wantAdditional = appState.wantAdditional;

  Map<String, dynamic> requiredField = {};

  final contributionAmountCtl = TextEditingController();
  final contributionAmountInLetterCtl = TextEditingController();

  @override
  void initState() {
    super.initState();

    loadPeriodicitiesJson();
    loadPaymentMethodsJson();

    if (adhesion.additional!.contributionAmount != null) {
      contributionAmountCtl.text =
          adhesion.additional!.contributionAmount!.toString();
    }

    if (appState.contributionAmountInLetter != null) {
      contributionAmountInLetterCtl.text =
          appState.contributionAmountInLetter!.toString();
    }

    contributionAmountCtl.addListener(() {
      updateAdditional(contributionAmountCtl.text, "contributionAmount");
    });

    contributionAmountInLetterCtl.addListener(() {
      appState.contributionAmountInLetter = contributionAmountInLetterCtl.text;
    });
  }

  @override
  void dispose() {
    contributionAmountCtl.dispose();
    contributionAmountInLetterCtl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool enabled = wantAdditional == "oui";

    Widget controls = Column(
      children: [
        HSeparator(50),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: buttonSoft,
                onPressed: () {
                  widget.goto(0);
                },
                child: const Text('Précédent'),
              ),
            ),
            VSeparator(10),
            Expanded(
              child: ElevatedButton(
                style: buttonSoft,
                onPressed: () {
                  dynamic required = widget.goto(2);
                  print("requiredField $requiredField");
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

    Widget Cota = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HSeparator(20),
        Label("Montant de la cotisation *"),
        TextField(
          enabled: enabled,
          controller: contributionAmountCtl,
          decoration: textFieldStyle(
            hintText: "Montant de la cotisation",
            error: testField("contributionAmount"),
          ),
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly,
            ThousandsSeparatorInputFormatter(),
          ],
        ),
        HSeparator(15),
        Label("Montant de la cotisation en Lettre"),
        TextField(
          enabled: enabled,
          controller: contributionAmountInLetterCtl,
          decoration: textFieldStyle(
            hintText: "Montant de la cotisation en Lettre",
            error: testField("contributionAmountInLetter"),
          ),
          inputFormatters: <TextInputFormatter>[
            UpperCaseTextFormatter(),
          ],
        ),
        HSeparator(15),
        if (periodicities.length > 0)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Label("Périodicité *"),
              SelectField(
                error: testField("periodicity"),
                hintText: "Périodicité",
                items: periodicities,
                onSelect: changePeriodicity,
                enabled: enabled,
                defaultValue: adhesion.additional!.periodicity!,
              )
            ],
          ),
        HSeparator(15),
        if (paymentMethods.length > 0)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Label("Mode de paiement *"),
              SelectField(
                error: testField("paymentMethod"),
                hintText: "Mode de paiement",
                items: paymentMethods,
                onSelect: changePaymentMethod,
                enabled: enabled,
                defaultValue: adhesion.additional!.paymentMethod!,
              )
            ],
          ),
        HSeparator(15),
        Label("Date d'effet *"),
        DatePicker(
          error: testField("effectiveDate"),
          hintText: "Date d'effet",
          onSelect: changeEffectiveDate,
          enabled: enabled,
          defaultValue: adhesion.additional!.effectiveDate!,
          firstDate: DateTime.now(),
        ),
      ],
    );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          TitlesForm(
            title: "Cotisation additionnelle de l'adhérent",
            sTitle: "Informations de l'adhérent dans le formulaire ci-dessous",
          ),
          HSeparator(30),
          // ***  Form fields ***
          AutoSizeText(
            "Souhaitez-vous effectuer une cotisation additionnelle (minimum 5 000 FCFA) ?",
            maxLines: 3,
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(),
              Expanded(
                child: Row(
                  children: [
                    Radio(
                      fillColor: errorRadios(testField("wantAdditional")),
                      value: "oui",
                      groupValue: wantAdditional,
                      onChanged: (value) {
                        changeWantAdditional(value.toString());
                      },
                    ),
                    Expanded(
                        child: AutoSizeText(
                      'oui',
                      maxLines: 1,
                    ))
                  ],
                ),
                flex: 1,
              ),
              Expanded(
                child: Row(
                  children: [
                    Radio(
                      fillColor: errorRadios(testField("wantAdditional")),
                      value: "non",
                      groupValue: wantAdditional,
                      onChanged: (value) {
                        changeWantAdditional(value.toString());
                      },
                    ),
                    Expanded(
                        child: AutoSizeText(
                      'non',
                      maxLines: 1,
                    ))
                  ],
                ),
                flex: 1,
              ),
              Spacer(),
            ],
          ),
          if (enabled) Cota,
          // ***  Form fields end ***

          if (widget.showControls) controls,
        ],
      ),
    );
  }

  Future<void> loadPeriodicitiesJson() async {
    final String data =
        await rootBundle.loadString('assets/data/periodicities.json');
    List<OptionType> _data = optionTypeFromJson(data);
    setState(() {
      periodicities = _data
          .map((e) => Option(
                e.value!.toUpperCase(),
                e.title!.toUpperCase(),
                e.value!.toUpperCase(),
              ))
          .toList();
    });
  }

  Future<void> loadPaymentMethodsJson() async {
    final String data =
        await rootBundle.loadString('assets/data/payment_methods.json');
    List<OptionType> _data = optionTypeFromJson(data);
    setState(() {
      paymentMethods = _data
          .map((e) => Option(
                e.value!.toUpperCase(),
                e.title!.toUpperCase(),
                e.value!.toUpperCase(),
              ))
          .toList();
    });
  }

  void changeWantAdditional(String value) {
    setState(() {
      wantAdditional = value;
    });
    appState.wantAdditional = value;
    store.updateAppState(appState);
  }

  void changePeriodicity(Option option) {
    adhesion.additional!.periodicity = option.value;
    store.updateAdhesion(adhesion);
  }

  void changePaymentMethod(Option option) {
    adhesion.additional!.paymentMethod = option.value;
    store.updateAdhesion(adhesion);
  }

  void changeEffectiveDate(DateTime date) {
    String fDate = DateFormat('dd/MM/yyyy').format(date);
    adhesion.additional!.effectiveDate = fDate;
    store.updateAdhesion(adhesion);
  }

  void updateAdditional(String value, String field) {
    switch (field) {
      case "contributionAmount":
        String _value = value.replaceAll(" ", "");
        adhesion.additional!.contributionAmount = int.tryParse(_value);
        break;
    }
    store.updateAdhesion(adhesion);
  }

  bool testField(String field) {
    if (!canVerify) return false;
    bool? value = requiredField[field];
    if (value == null) return false;
    return canVerify && value;
  }
}
