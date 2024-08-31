import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:mreader/app.dart';
import 'package:mreader/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'mReader',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  usePathUrlStrategy();

  runApp(const ProviderScope(child: App()));
}
