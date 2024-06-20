import 'package:expensive_tracker/Pages/expenses.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color(0xFF323264),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color(0xFF05637D),
);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (fn) {
      runApp(
        MaterialApp(
          debugShowCheckedModeBanner: false,
          darkTheme: ThemeData.dark().copyWith(
            colorScheme: kDarkColorScheme,
            appBarTheme: const AppBarTheme().copyWith(
              backgroundColor: kDarkColorScheme.primaryContainer,
              foregroundColor: kDarkColorScheme.onPrimaryContainer,
            ),
            cardTheme: const CardTheme().copyWith(
              color: kDarkColorScheme.secondaryContainer,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: kDarkColorScheme.primaryContainer,
                foregroundColor: kDarkColorScheme.onPrimaryContainer,
              ),
            ),
            textTheme: ThemeData().textTheme.copyWith(
                  titleLarge: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: kDarkColorScheme.onSecondaryContainer,
                    fontSize: 18,
                  ),
                  bodyMedium: TextStyle(
                    color: kDarkColorScheme.onPrimaryContainer,
                    fontSize: 19,
                  ),
                  bodySmall: TextStyle(
                    color: kDarkColorScheme.onSecondaryContainer,
                    fontSize: 14,
                  ),
                  headlineSmall: TextStyle(
                    color: kDarkColorScheme.onTertiaryContainer,
                    fontSize: 17,
                  ),
                ),
          ),
          theme: ThemeData().copyWith(
            colorScheme: kColorScheme,
            appBarTheme: const AppBarTheme().copyWith(
              backgroundColor: kColorScheme.onPrimaryContainer,
              foregroundColor: kColorScheme.primaryContainer,
            ),
            cardTheme: const CardTheme().copyWith(
              color: kColorScheme.secondaryContainer,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: kColorScheme.primaryContainer,
              ),
            ),
            textTheme: ThemeData().textTheme.copyWith(
                  titleLarge: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: kColorScheme.onSecondaryContainer,
                    fontSize: 18,
                  ),
                  bodyMedium: TextStyle(
                    color: kColorScheme.onPrimaryContainer,
                    fontSize: 19,
                  ),
                  bodySmall: TextStyle(
                    color: kColorScheme.onSecondaryContainer,
                    fontSize: 15,
                  ),
                  headlineSmall: TextStyle(
                    color: kColorScheme.onTertiaryContainer,
                    fontSize: 17,
                  ),
                ),
          ),
          themeMode: ThemeMode.system,
          home: const Expenses(),
        ),
      );
    },
  );
}
