import 'package:flutter/material.dart';
import 'package:mreader/widgets/glass.dart';

class DisplayCard extends StatelessWidget {
  const DisplayCard({required this.child, super.key});
  final Widget child;
  final double padding = 2;
  final double width = 175;
  double scale(double screen) =>
      screen < (width * 2) ? (screen / 2) / (width + (padding * 4)) : 1;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Padding(
        padding: EdgeInsets.all(padding),
        child: SizedBox(
          width: width * scale(MediaQuery.of(context).size.width),
          height: (width / 2 * 3) * scale(MediaQuery.of(context).size.width),
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
        ),
      );
    });
  }
}
