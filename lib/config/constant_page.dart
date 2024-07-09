import 'package:flutter/material.dart';
import 'package:untitled/main.dart';

class Constant {
  static var mediaquery = MediaQuery.of(navigatorKey.currentState!.context);
  static var theme = Theme.of(navigatorKey.currentState!.context);
  static var color = Color(0xFF39A552);

  static const String apikey = "f5f337bf4d8d4d58b148f5ae08b7ae3f";
  static const String Url = "newsapi.org";
}
