import 'package:flutter/material.dart';
import 'package:cgrae_enrollment/component/separator.dart';

Widget Label(String text) {
  return Column(
    children: [
      // HSeparator(10),
      Text(text),
      HSeparator(4),
    ],
  );
}
