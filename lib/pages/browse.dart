import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BrowsePage extends ConsumerWidget {
  const BrowsePage({super.key});

  static String get routeLocation => '/browse';
  static String get routeName => 'browse';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return  const Center(child: Text('browse'),);
  }
}