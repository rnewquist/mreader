import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mreader/widgets/display_card.dart';

class LibraryPage extends ConsumerWidget {
  const LibraryPage({super.key});

  static String get routeLocation => '/';
  static String get routeName => 'Library';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          DisplayCard(
            child: Center(
              child: Text('Card 1'),
            ),
          ),
          SizedBox(
            width: 4,
          ),
          DisplayCard(
            child: Center(
              child: Text('Card 2'),
            ),
          ),
          SizedBox(
            width: 4,
          ),
          DisplayCard(
            child: Center(
              child: Text('Card 3'),
            ),
          ),
          SizedBox(
            width: 4,
          ),
          DisplayCard(
            child: Center(
              child: Text('Card 4'),
            ),
          ),
          SizedBox(
            width: 4,
          ),
          DisplayCard(
            child: Center(
              child: Text('Card 5'),
            ),
          ),
          SizedBox(
            width: 4,
          ),
          DisplayCard(
            child: Center(
              child: Text('Card 6'),
            ),
          ),
          SizedBox(
            width: 4,
          ),
          DisplayCard(
            child: Center(
              child: Text('Card 7'),
            ),
          ),
          SizedBox(
            width: 4,
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
