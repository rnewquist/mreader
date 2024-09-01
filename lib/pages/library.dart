import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mreader/constants.dart';
import 'package:mreader/widgets/display_card.dart';

class LibraryPage extends ConsumerWidget {
  const LibraryPage({super.key});

  static String get routeLocation => '/';
  static String get routeName => 'Library';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          DisplayCard(
            child: Center(
              child: Text('$screenWidth'),
            ),
          ),
          DisplayCard(
            child: Center(
              child: Text('Card 2'),
            ),
          ),
          DisplayCard(
            child: Center(
              child: Text('Card 3'),
            ),
          ),
          DisplayCard(
            child: Center(
              child: Text('Card 4'),
            ),
          ),
          DisplayCard(
            child: Center(
              child: Text('Card 5'),
            ),
          ),
          DisplayCard(
            child: Center(
              child: Text('Card 6'),
            ),
          ),
          DisplayCard(
            child: Center(
              child: Text('Card 7'),
            ),
          ),
          DisplayCard(
            child: Center(
              child: Text('Card 8'),
            ),
          ),
        ],
      ),
    );
  }
}
