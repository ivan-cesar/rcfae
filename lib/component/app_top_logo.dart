import 'package:flutter/material.dart';
import 'package:cgrae_enrollment/utils/styles.dart';


Widget AppTopLogo() {
  return Container(
    padding: EdgeInsets.only(top: 10, bottom: 10),

    width: double.infinity,
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Image.asset(
            'assets/images/logo_cgrae.png',
            width: 60,
            height: 60,
            fit: BoxFit.fitHeight,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "RCFAE",
                  style: TextStyle(
                      fontSize: 20,
                      color: AppColors.primarySwatch,
                      letterSpacing: 8,
                      fontWeight: FontWeight.w900),
                ),
                Text(
                  "ADHESION DIGITAL",
                  style: TextStyle(
                      color: AppColors.primarySwatch,
                      fontSize: 11,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
          ),
        ],
      ),
    )
  );
}
