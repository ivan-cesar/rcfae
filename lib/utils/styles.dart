import 'package:flutter/material.dart';
import 'package:cgrae_enrollment/utils/create_material_color.dart';

// Common

class AppColors {
  static MaterialColor primarySwatch = createMaterialColor(Color(0xFF0A867F));
  static MaterialColor softGreen = createMaterialColor(Color(0xFFDAEDEC));
// static MaterialColor softGreen = createMaterialColor(Color(0xFFDAEDEC));
}

BorderRadius borderRadius = BorderRadius.circular(15.0);

// for TextField

BorderSide borderSideNone = BorderSide(width: 0, color: Colors.transparent);

BorderRadius textFieldBorderRadius = borderRadius;

OutlineInputBorder outlineInputBorderNone = OutlineInputBorder(
  borderSide: borderSideNone,
  borderRadius: textFieldBorderRadius,
);

const textFieldHPad = 30.0;
const textFieldVPad = 0.0;

InputDecoration textFieldStyle({
  String hintText = "",
  IconData? icon,
  Function? onIconClick,
  bool error = false,
}) {
  Color fillColor = error ? Colors.red[50]! : Colors.grey[200]!;
  Color textColor = error ? Colors.red[500]! : Colors.grey[600]!;

  return icon != null
      ? InputDecoration(
          filled: true,
          hintStyle: TextStyle(color: textColor),
          hintText: hintText,
          fillColor: fillColor,
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: textFieldHPad),
            child: InkWell(
              onTap: () {
                if (onIconClick != null) onIconClick();
              },
              child: Icon(icon),
            ),
          ),
          contentPadding: EdgeInsets.symmetric(
              vertical: textFieldVPad, horizontal: textFieldHPad),
        )
      : InputDecoration(
          filled: true,
          hintStyle: TextStyle(color: textColor),
          hintText: hintText,
          fillColor: fillColor,
          contentPadding: EdgeInsets.symmetric(
              vertical: textFieldVPad, horizontal: textFieldHPad),
        );
}

// for Button

BorderRadius buttonBorderRadius = borderRadius;
const buttonHeight = 45.0;
const buttonFontSize = 15.0;

ButtonStyle buttonSolid = ElevatedButton.styleFrom(
  textStyle:
      const TextStyle(fontSize: buttonFontSize, fontWeight: FontWeight.w900),
  elevation: 0,
  minimumSize: Size.fromHeight(buttonHeight),
  shape: RoundedRectangleBorder(borderRadius: buttonBorderRadius),
  splashFactory: NoSplash.splashFactory,
  shadowColor: AppColors.primarySwatch.shade50,
);

ButtonStyle buttonSolidBorder = ElevatedButton.styleFrom(
  textStyle: const TextStyle(
    fontSize: buttonFontSize,
    fontWeight: FontWeight.w900,
  ),
  foregroundColor: Color(0xFF0A867F),
  side: BorderSide(width:3, color:Color(0xFF0A867F)), //border width and color
  elevation: 0,
  minimumSize: Size.fromHeight(buttonHeight),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
  splashFactory: NoSplash.splashFactory,
  backgroundColor: Colors.transparent,
  shadowColor: AppColors.primarySwatch.shade50,
);

ButtonStyle buttonSolidSmall = ElevatedButton.styleFrom(
  textStyle:
      const TextStyle(fontSize: buttonFontSize, fontWeight: FontWeight.w900),
  elevation: 0,
  // minimumSize: Size.fromHeight(40),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
  splashFactory: NoSplash.splashFactory,
  shadowColor: AppColors.primarySwatch.shade50,
);

ButtonStyle buttonSolidSmallColor(int bgColor, int textColor) {
  return ElevatedButton.styleFrom(
    foregroundColor: Color(textColor),
    textStyle: TextStyle(
      fontSize: buttonFontSize,
      fontWeight: FontWeight.w900,
    ),
    elevation: 0,
    // minimumSize: Size.fromHeight(40),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    splashFactory: NoSplash.splashFactory,
    backgroundColor: Color(bgColor),
    // 0xFFFFFFFF
    shadowColor: AppColors.primarySwatch.shade50,
  );
}

ButtonStyle buttonSoft = ElevatedButton.styleFrom(
  textStyle:
      const TextStyle(fontSize: buttonFontSize, fontWeight: FontWeight.w900),
  backgroundColor: AppColors.softGreen,
  foregroundColor: AppColors.primarySwatch,
  elevation: 0,
  minimumSize: Size.fromHeight(buttonHeight),
  shape: RoundedRectangleBorder(borderRadius: buttonBorderRadius),
  splashFactory: NoSplash.splashFactory,
  shadowColor: AppColors.primarySwatch.shade50,
);

ButtonStyle buttonSoftGen({backgroundColor, foregroundColor}) {
  return ElevatedButton.styleFrom(
    textStyle:
        const TextStyle(fontSize: buttonFontSize, fontWeight: FontWeight.w900),
    backgroundColor: backgroundColor,
    foregroundColor: foregroundColor,
    elevation: 0,
    minimumSize: Size.fromHeight(buttonHeight),
    shape: RoundedRectangleBorder(borderRadius: buttonBorderRadius),
    splashFactory: NoSplash.splashFactory,
    shadowColor: AppColors.primarySwatch.shade50,
  );
}

ButtonStyle buttonTrans = ElevatedButton.styleFrom(
  textStyle:
      const TextStyle(fontSize: buttonFontSize, fontWeight: FontWeight.w900),
  backgroundColor: Colors.transparent,
  foregroundColor: Colors.white,
  elevation: 0,
  minimumSize: Size.fromHeight(buttonHeight),
  shape: RoundedRectangleBorder(
    borderRadius: buttonBorderRadius,
    side: BorderSide(width: 2, color: Colors.white),
  ),
  splashFactory: NoSplash.splashFactory,
  shadowColor: AppColors.primarySwatch.shade50,
);

// for Text

TextStyle loginTitle = TextStyle(fontSize: 30);

// for Text

MaterialStateColor errorRadios(bool? error) {
  return MaterialStateColor.resolveWith(
    (Set<MaterialState> states) {
      if (states.isEmpty && error != null && error) {
        return MaterialStateColor.resolveWith((states) => Colors.red[200]!);
      }
      if (states.contains(MaterialState.selected)) {
        return Colors.deepOrange;
      }
      return Colors.grey;
    },
  );
}
