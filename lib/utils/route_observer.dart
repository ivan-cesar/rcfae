import 'package:cgrae_enrollment/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class MyRouteObserver extends RouteObserver<PageRoute<dynamic>> {
  void _sendScreenView(PageRoute<dynamic> route) {
    var screenName = route.settings.name;
    print('screenName $screenName');
    switch (screenName) {
      case "/":
        changeSystemUIOverlayStyle(AppColors.softGreen, Colors.transparent);
        break;
      case "/offline":
        changeSystemUIOverlayStyle(Colors.transparent, Colors.transparent);
        break;
      case "/online/home":
        changeSystemUIOverlayStyle(Color(0xFFF0F4F5), Color(0xFFF0F4F5));
        break;
      case "/offline/form":
        changeSystemUIOverlayStyle(Colors.transparent, Colors.transparent);
        break;
    }
    // do something with it, ie. send it to your analytics service collector
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    if (route is PageRoute) {
      _sendScreenView(route);
    }
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute is PageRoute) {
      _sendScreenView(newRoute);
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    if (previousRoute is PageRoute && route is PageRoute) {
      _sendScreenView(previousRoute);
    }
  }
}

void changeSystemUIOverlayStyle(Color sBColor, Color nBColor) {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: sBColor,
      systemNavigationBarColor: nBColor,
      systemNavigationBarDividerColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      systemStatusBarContrastEnforced: false,
      systemNavigationBarContrastEnforced: false,
    ),
  );
}
