import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LibraryPage extends ConsumerWidget {
  const LibraryPage({super.key});

  static String get routeLocation => '/';
  static String get routeName => 'Library';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
  return const Center(
      child: Text('Library'),
    );
  }
}
