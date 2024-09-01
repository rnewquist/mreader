import 'package:flutter/material.dart';
import 'package:mreader/widgets/glass.dart';

class DisplayCard extends StatelessWidget {
  const DisplayCard({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 300,
      child: Card(
          color: Colors.transparent,
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(
              color: Colors.white.withOpacity(0.15),
              width: 1.5,
            ),
          ),
          child: Glass(child: child)),
    );
  }
}
