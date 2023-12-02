import 'package:flutter/material.dart';
import 'package:cgrae_enrollment/utils/styles.dart';
import 'package:cgrae_enrollment/component/help_screen.dart';

const headerHeight = 300.0;
const minus = 20.0;

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LoginHeader(),
        ],
      ),
    );
  }
}

class Backgound extends StatelessWidget {
  final Widget image;

  Backgound(this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: headerHeight,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.elliptical(300.0, 60.0),
          bottomRight: Radius.elliptical(200.0, 20.0),
        ),
        color: AppColors.primarySwatch,
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 100),
            height: headerHeight - minus,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.elliptical(300.0, 60.0),
                bottomRight: Radius.elliptical(200.0, 60.0),
              ),
              color: AppColors.softGreen,
            ),
            child: SizedBox(
              child: image,
            ),
          ),
        ],
      ),
    );
  }
}

class LoginHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Backgound(
          Image.asset(
            'assets/images/agent_login.png',
            fit: BoxFit.fitHeight,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 50, left: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/logo_cgrae_n.png',
                width: 50,
                height: 50,
                fit: BoxFit.fitHeight,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "RCFAE",
                      style: TextStyle(
                          color: AppColors.primarySwatch,
                          letterSpacing: 9,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "ADHESION DIGITAL",
                      style: TextStyle(
                          color: AppColors.primarySwatch,
                          fontSize: 10,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 50,
          right: 20,
          child: TextButton(
            onPressed: () {
              print("hellllllooooooo");
            },
            child: Icon(Icons.info_outline, color: AppColors.primarySwatch),
          ),
        ),

      ],
    );
  }
}
