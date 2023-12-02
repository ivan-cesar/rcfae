import 'package:cgrae_enrollment/component/custom_dialog_box.dart';
import 'package:flutter/material.dart';
import 'package:cgrae_enrollment/component/enrollment_form.dart';
import 'package:get/get.dart';
import 'package:cgrae_enrollment/utils/store.dart';

class OfflinePage extends StatefulWidget {
  const OfflinePage({super.key, required this.title});

  final String title;

  @override
  State<OfflinePage> createState() => _OfflinePageState();
}

class _OfflinePageState extends State<OfflinePage> {
  final Store store = Get.find();

  @override
  Widget build(BuildContext context) {
    final Store store = Get.put(Store());
    return WillPopScope(
      onWillPop: () async {
        print("========================= Quitte form");
        // Navigator.pop(context);
        // Do something here
        // SystemNavigator.pop();

        showDialog(
            context: context,
            builder: (BuildContext context) {
              return CustomDialogBox(
                title: "Confirmation",
                descriptions: "voulez vous interrompre l'opération ?",
                cancelLabel: "Non",
                confirmLabel: "Oui",
                onConfirm: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  store.resetAppStore();
                },
              );
            });

        return false;
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: SafeArea(child: Scaffold(body: EnrollmentForm(title: ''))),
      ),
    );
  }
}
