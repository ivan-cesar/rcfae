import 'package:flutter/material.dart';
import 'package:cgrae_enrollment/utils/styles.dart';

Widget TitlesForm({String title = "", String sTitle = ""}) {
  return Center(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: AppColors.primarySwatch),
          ),
          Text(
            sTitle,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    ),
  );
}
