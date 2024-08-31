import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@immutable
class AppState {
  final ThemeData themeData;
  const AppState({required this.themeData});
  AppState copyWith({ThemeData? themeData}) {
    return AppState(
      themeData: themeData ?? this.themeData,
    );
  }
}

class AppNotifier extends Notifier<AppState> {
  @override
  AppState build() {
    return AppState(
      themeData: ThemeData(
          textTheme: TextTheme(
            displayLarge: const TextStyle(
              fontSize: 72,
              fontWeight: FontWeight.bold,
            ),
            titleLarge: GoogleFonts.montserrat(
              fontSize: 30,
              fontStyle: FontStyle.italic,
            ),
            bodyMedium: GoogleFonts.montserrat(),
            displaySmall: GoogleFonts.montserrat(),
          ),
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blue, brightness: Brightness.dark)),
    );
  }
}

final appSettings = NotifierProvider<AppNotifier, AppState>(() {
  return AppNotifier();
});
