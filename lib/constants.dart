import 'dart:ui';

import 'package:flutter/material.dart';

double get screenWidth {
  FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;
  Size size = view.physicalSize / view.devicePixelRatio;
  return size.width;
}

double get screenHeight {
  FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;
  Size size = view.physicalSize / view.devicePixelRatio;
  return size.height;
}
