import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mreader/notifiers/app_notifier.dart';
import 'package:mreader/notifiers/router_provider.dart';

class App extends ConsumerWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appState = ref.watch(appSettings);
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      theme: appState.themeData,
      debugShowCheckedModeBanner: false,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      title: 'mReader',
    );
  }
}
