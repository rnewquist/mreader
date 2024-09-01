import 'dart:ui';

import 'package:flutter/material.dart';

class Glass extends StatelessWidget {
  const Glass(
      {required this.child, this.padding = const EdgeInsets.all(0), super.key});
  final Widget child;
  final EdgeInsets padding;
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          color: Colors.black.withOpacity(0.05),
          child: Padding(
            padding: padding,
            child: child,
          ),
        ),
      ),
    );
  }
}
