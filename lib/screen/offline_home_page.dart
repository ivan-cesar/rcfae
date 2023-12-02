import 'package:flutter/material.dart';
import 'package:cgrae_enrollment/component/offline_home.dart';
import 'package:get/get.dart';
import 'package:cgrae_enrollment/utils/store.dart';

class OfflineHomePage extends StatefulWidget {
  const OfflineHomePage({super.key, required this.title});

  final String title;

  @override
  State<OfflineHomePage> createState() => _OfflineHomePageState();
}

class _OfflineHomePageState extends State<OfflineHomePage>  {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Store store = Get.put(Store());
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SafeArea(child: Scaffold(body: OfflineHome(title: ''))),
    );
  }
}
