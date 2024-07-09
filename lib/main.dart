import 'package:flutter/material.dart';
import 'package:untitled/config/applecation_theme.dart';
import 'package:untitled/config/page_route_name.dart';
import 'package:untitled/config/routs.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ApplecationManger.LightTheme,
      themeMode: ThemeMode.light,
      initialRoute: PageRouteName.initial,
      navigatorKey: navigatorKey,
      onGenerateRoute: Routes.GenrateRoute,
    );
  }
}
