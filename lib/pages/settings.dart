import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  static String get routeLocation => '/settings';
  static String get routeName => 'settings';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return  const Center(child: Text('Settings'),);
  }
}