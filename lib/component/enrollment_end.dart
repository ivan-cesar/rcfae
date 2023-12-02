import 'package:cgrae_enrollment/utils/store.dart';
import 'package:flutter/material.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:cgrae_enrollment/utils/styles.dart';
import 'package:cgrae_enrollment/component/separator.dart';
import 'package:cgrae_enrollment/component/by_propulse.dart';
import 'package:get/get.dart';

class EnrollmentEnd extends StatefulWidget {
  final void Function(int) goto;

  const EnrollmentEnd({super.key, required this.title, required this.goto});

  final String title;

  @override
  State<EnrollmentEnd> createState() => _EnrollmentEndState();
}

class _EnrollmentEndState extends State<EnrollmentEnd> {
  final Store store = Get.find();
  int activeStep = 0;

  void goto(int page) {
    setState(() {
      activeStep = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/end_animation.gif',
          width: 300,
          height: 300,
          //fit: BoxFit.fitHeight,
        ),
        Text(
          "Données enregistrées avec",
          style: TextStyle(fontSize: 20),
        ),
        Text(
          "succès",
          style: TextStyle(fontSize: 50),
        ),
        HSeparator(20),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: ElevatedButton(
            style: buttonSoft,
            onPressed: () {
              store.resetAdhesion();
              // widget.goto(0);
              Navigator.pop(context);
            },
            child: const Text('Fermer'),
          ),
        ),
        HSeparator(50),

        Align(
          alignment: Alignment.bottomCenter,
          child: ByPropulse(),
        ),
      ],
    );
  }
}
