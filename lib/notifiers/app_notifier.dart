import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@immutable
class AppState {
  final bool showSplash;
  final ThemeData themeData;
  const AppState({required this.showSplash, required this.themeData});
  AppState copyWith({bool? showSplash, ThemeData? themeData}) {
    return AppState(
      showSplash: showSplash ?? this.showSplash,
      themeData: themeData ?? this.themeData,
    );
  }
}

class AppNotifier extends Notifier<AppState> {
  @override
  AppState build() {
    return  AppState(showSplash: true, themeData: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme(),
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blue, brightness: Brightness.dark)),);
  }

  void toggleShowSplash() {
    state = state.copyWith(showSplash: !state.showSplash);
  }
}

final appProvider = NotifierProvider<AppNotifier, AppState>(() {
  return AppNotifier();
});
