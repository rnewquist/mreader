
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mreader/app_router.dart';
import 'package:mreader/notifiers/app_notifier.dart';

class App extends ConsumerWidget {
  const App({super.key});
  final router = AppRouterDelegate();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AppState appState = ref.watch(appProvider);
    return MaterialApp.router(
      theme: appState.themeData,
      debugShowCheckedModeBanner: false,
      routerDelegate: router,
      title: 'mReader',
    );
  }
}
