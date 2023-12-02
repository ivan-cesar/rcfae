import 'package:flutter/material.dart';

Widget LoginFieldPadding(BuildContext context, Widget child) {
  MediaQueryData media = MediaQuery.of(context);
  double _horizontalPadding = media.size.width < 720 ? media.size.width / 10.0 : 150;
  // print(media.size.width);
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: _horizontalPadding, vertical: 0),
    child: child,
  );
}

