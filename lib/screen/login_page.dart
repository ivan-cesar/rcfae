import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:cgrae_enrollment/utils/styles.dart';
import 'package:cgrae_enrollment/component/padding.dart';
import 'package:cgrae_enrollment/component/login_header.dart';
import 'package:cgrae_enrollment/component/separator.dart';
import 'package:cgrae_enrollment/component/by_propulse.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:cgrae_enrollment/utils/store.dart';
import 'package:dio/dio.dart' as Dio;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'dart:async';

import '../utils/app_store_types.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  bool wait = false;
  bool showPassword = false;

  late AnimationController animationCtl;

  final dio = Dio.Dio();
  final Store store = Get.find();

  late AppStore appStore = store.appStore;
  late UserConnected userConnected = appStore.userConnected;
  late String? serverUrl = appStore.serverUrl;

  bool _stayConnected = false;
  Map<String, dynamic> requiredField = {};

  final loginCtl = TextEditingController();
  final passwordCtl = TextEditingController();
  bool obscureText = true;


  var login = "";
  var password = "";

  Future<Null> getSharedPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    String userDataString = prefs.getString('userConnected') ?? "";

    if (userDataString != "") {
      Map<String, dynamic> map = jsonDecode(userDataString);
      UserConnected userConnected = UserConnected.fromJson(map);
      store.appStore.userConnected = userConnected;
      if (userConnected.isConnected == true) {
        Navigator.pushNamed(context, '/online/home');
      }
    }

  }

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: AppColors.softGreen,
        systemNavigationBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        systemStatusBarContrastEnforced: true,
        systemNavigationBarContrastEnforced: true,
      ),
    );

    getSharedPrefs();

    // Start listening to changes.
    loginCtl.addListener(() {
      login = loginCtl.text;
    });

    passwordCtl.addListener(() {
      password = passwordCtl.text;
    });

    animationCtl = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    animationCtl.repeat(reverse: true);

    super.initState();
  }

  @override
  void dispose() {
    loginCtl.dispose();
    passwordCtl.dispose();
    animationCtl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Store store = Get.put(Store());
    return WillPopScope(
      onWillPop: () async {
        print("exit app");
        Navigator.pop(context);
        // Do something here
        SystemNavigator.pop();
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Stack(
            children: [
              LoginHeader(),
              SafeArea(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: ByPropulse(),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: headerHeight - 30,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 20, right: 20, bottom: 20),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.8),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                            ),
                            child: Column(
                              children: [
                                HSeparator(20),
                                Text("Connectez-vous", style: loginTitle),
                                HSeparator(6),
                                LoginFieldPadding(
                                    context,/*
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "Avec vos données ",
                                                    style: TextStyle(
                                                      color: Colors.grey[500],
                                                    ),

                                                  ),
                                                  TextSpan(
                                                    text: "d'Agent ",
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.grey[500],

                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: "pour accédez à l'espace d'enrôlement",
                                                    style: TextStyle(
                                                      color: Colors.grey[500],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
*/
                                  SizedBox(
                                    width: 411.62,
                                    height: 64.53,
                                    child: Text.rich(
                                      TextSpan(
                                        children: [
                                        TextSpan(
                                        text: "Avec vos données",
                                        style: TextStyle(
                                          color: Color(0xFF5B5B5B),
                                          fontSize: 11,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' ',
                                        style: TextStyle(
                                          color: Color(0xFF5B5B5B),
                                          fontSize: 11,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                      TextSpan(
                                          text: "d'Agent",
                                      style: TextStyle(
                                      color: Color(0xFF5B5B5B),
                                      fontSize: 11,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " pour accédez à l'espace d'enrôlement",
                                    style: TextStyle(
                                      color: Color(0xFF5B5B5B),
                                      fontSize: 11,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  ],
                                ),
                            textAlign: TextAlign.center,
                          ),
                    )

                                ),
                                HSeparator(30),
                              ],
                            ),
                          ),
                          LoginFieldPadding(
                            context,
                            TextField(
                              enabled: !wait,
                              decoration: textFieldStyle(
                                hintText: "Identifiant",
                                icon: Icons.mail,
                              ),
                              controller: loginCtl,
                            ),
                          ),
                          HSeparator(10),
                          LoginFieldPadding(
                            context,
                            TextField(
                              enabled: !wait,
                              obscureText: !showPassword,
                              enableSuggestions: false,
                              autocorrect: false,
                              decoration: textFieldStyle(
                                hintText: "Mot de passe",
                                icon: showPassword ? Icons.visibility : Icons.visibility_off,
                                onIconClick: () {
                                  setState(() {
                                    showPassword = !showPassword;
                                  });
                                },
                              ),
                              controller: passwordCtl,
                            ),
                          ),

                          LoginFieldPadding(
                              context,
                              Row(
                                children: [
                                  Checkbox(
                                    value: _stayConnected,
                                    onChanged: wait ? null : _onChangeSC,
                                  ),
                                  Text("Rester connecté")
                                ],
                              )),
                          HSeparator(20),
                          LoginFieldPadding(
                              context,
                              ElevatedButton(
                                style: buttonSolid,
                                onPressed: wait
                                    ? null
                                    : () {
                                        _connectUser(context);
                                      },
                                child: const Text('Se connecter'),
                              )),
                          HSeparator(10),
                          LoginFieldPadding(
                              context,
                              ElevatedButton(
                                style: buttonSoft,
                                onPressed: () {
                                  Navigator.pushNamed(context, '/offline');
                                },
                                child: const Text('Enrôlement hors connexion'),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              if (wait)
                Opacity(
                  opacity: 0.8,
                  child: ModalBarrier(
                    dismissible: false,
                    color: Colors.white,
                  ),
                ),
              if (wait)
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: CircularProgressIndicator(
                      value: animationCtl.value,
                      semanticsLabel: 'Circular progress indicator',
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> setWait(bool b) async {
    setState(() {
      wait = b;
    });
    return b;
  }

  void _onChangeSC(bool? b) {
    setState(() {
      _stayConnected = !_stayConnected;
    });
  }

  void _connectUser(BuildContext context) async {
    try {
      if (login != "" && password != "") {
        var data = {
          "grantType": "password",
          "username": "$login",
          "password": "$password",
          "withRefreshToken": true
        };

        setWait(true);

        var resp = await _postData(data);

        if (resp == null) {
          _connectionError("Connexion impossible");
          setWait(false);
          return;
        }

        var m = resp as Map;
        if (m["message"] == "USER:NOT:FOUND") {
          _connectionError("Connexion échouée");
          setWait(false);
          return;
        }

        var accessToken = m["accessToken"];
        var refreshToken = m["refreshToken"];

        if (accessToken != null) {
          var cnxData = await _getData(accessToken);
          var cnxDataMap = cnxData as Map<String, dynamic>;

          // {
          // isConnected: true,
          //   user: {
          //     lastName: Koney,
          //     firstName: Elisey,
          //     scope: [{authority: SCOPE_SUPERVISOR}],
          //     roles: [SUPERVISOR], username: elisey
          //   }
          // }

          if (cnxData != null) {
            userConnected.accessToken = accessToken;
            userConnected.refreshToken = refreshToken;
            userConnected.isConnected = cnxDataMap["isConnected"] as bool;
            userConnected.firstName = cnxDataMap["user"]["firstName"];
            userConnected.lastName = cnxDataMap["user"]["lastName"];
            userConnected.username = cnxDataMap["user"]["username"];
            userConnected.roles = List<String>.from(cnxDataMap["user"]["roles"]);
            store.appStore.userConnected = userConnected;

            final userConnectedString = json.encode(userConnected.toJson());
            final prefs = await SharedPreferences.getInstance();
            await prefs.setString('userConnected', userConnectedString);

            Navigator.pushNamed(context, '/online/home');
            _connectionSuccess();
          }
        }
      } else {
        _connectionWarning("Remplir tous les champs");
      }
    } catch (e) {
      print(e);
    }

    setWait(false);
  }

  Future<Object?> _postData(Object data) async {
    // var map = jsonDecode(dataString);
    print('$serverUrl/auth/connect');
    try {
      final response = await dio.post(
        '$serverUrl/auth/connect',
        data: data,
      );
      Map responseBody = response.data;
      return responseBody;
    } catch (e) {
      print(e);
    }
  }

  Future<Object?> _getData(String token) async {
    print('$serverUrl/auth/connect');
    try {
      dio.options.headers["authorization"] = "Bearer ${token}";
      final response = await dio.get(
        '$serverUrl/auth/connected',
      );
      Map responseBody = response.data;
      return responseBody;
    } catch (e) {
      print(e);
    }
  }

  void _connectionError(String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.redAccent,
        content: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  void _connectionWarning(String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.orange,
        content: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  void _connectionSuccess() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green,
        content: Text(
          "Connexion réussie",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

//
