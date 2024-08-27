import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:mreader/app.dart';

void main() async {

  usePathUrlStrategy();
  runApp(App());
}
