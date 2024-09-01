import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class PageWidget extends ConsumerWidget {
  const PageWidget({super.key, required this.routeLocation, required this.routeName});

  @override
  Widget build(BuildContext context, WidgetRef ref);
  final String routeLocation;
  final String routeName;
}
