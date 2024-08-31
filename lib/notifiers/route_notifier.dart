import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@immutable
class RouterState {
  final bool showSplash;

  const RouterState({required this.showSplash});
  RouterState copyWith({bool? showSplash}) {
    return RouterState(
      showSplash: showSplash ?? this.showSplash,
    );
  }
}

class RouterNotifier extends Notifier<RouterState> {
  @override
  RouterState build() {
    return const RouterState(showSplash: false);
  }

  void toggleSplashScreen() => state = state.copyWith(showSplash: !state.showSplash);
}

final routerNotifier = NotifierProvider<RouterNotifier, RouterState>(() {
  return RouterNotifier();
});
