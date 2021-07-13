import 'package:bankslip_flow/modules/splash/splash_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'modules/home/home_page.dart';
import 'modules/login/login_page.dart';

class AppRouter {
  static const String home = '/';
  static const String splash = '/splash';
  static const String login = '/login';

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => SplashPage(),
        );
      case home:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => HomePage(),
        );
      case login:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LoginPage(),
        );
      default:
        return MaterialPageRoute(builder: (_) => SplashPage());
    }
  }
}
