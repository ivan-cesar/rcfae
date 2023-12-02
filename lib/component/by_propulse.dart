import 'package:flutter/material.dart';

Widget ByPropulse({MaterialColor? color = null}) {
  var version = "0.0.8";
  return Padding(
    padding: EdgeInsets.only(bottom: 15),
    child: RichText(
      text: TextSpan(
        style: TextStyle(
          fontStyle: FontStyle.italic,
          color: Colors.grey[500],
        ),
        children: [
          TextSpan(
            text: "Développé par ",
          ),
          TextSpan(
            text: "Propulse Group | Version $version",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
