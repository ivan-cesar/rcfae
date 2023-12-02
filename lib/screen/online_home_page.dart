import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cgrae_enrollment/utils/store.dart';

import '../component/online_home.dart';

class OnlineHomePage extends StatefulWidget {
  const OnlineHomePage({super.key, required this.title});

  final String title;

  @override
  State<OnlineHomePage> createState() => _OnlineHomePageState();
}

class _OnlineHomePageState extends State<OnlineHomePage>  {

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
      child: SafeArea(child: Scaffold(body: OnlineHome(title: ''))),
    );
  }
}
