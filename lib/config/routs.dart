import 'package:flutter/material.dart';
import 'package:untitled/config/page_route_name.dart';
import 'package:untitled/pages/home/pages/homeview.dart';
import 'package:untitled/pages/home/pages/news_view.dart';
import 'package:untitled/pages/setting/settingview.dart';
import 'package:untitled/pages/splash%20view/splash_screen.dart';

class Routes {
  static Route<dynamic> GenrateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PageRouteName.initial:
        return MaterialPageRoute(
            builder: (context) => const SplashScreen(), settings: settings);
      case PageRouteName.homeview:
        return MaterialPageRoute(
            builder: (context) => Homeview(), settings: settings);
      case PageRouteName.settingview:
        return MaterialPageRoute(
            builder: (context) => const SettingView(), settings: settings);
      case PageRouteName.newsview:
        return MaterialPageRoute(
            builder: (context) => NewsView(), settings: settings);
      default:
        return MaterialPageRoute(
            builder: (context) => const SplashScreen(), settings: settings);
    }
  }
}
