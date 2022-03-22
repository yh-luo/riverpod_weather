import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'theme/theme.dart';
import 'weather/weather.dart';

final themeProvider =
    StateNotifierProvider<ThemeNotifier, ThemeState>((ref) => ThemeNotifier());

class WeatherApp extends ConsumerWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ThemeState state = ref.watch(themeProvider);
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      theme: ThemeData(
        primaryColor: state.color,
        textTheme: GoogleFonts.rajdhaniTextTheme(),
        appBarTheme: AppBarTheme(
          titleTextStyle: GoogleFonts.rajdhaniTextTheme(textTheme)
              .apply(bodyColor: Colors.white)
              .headline6,
        ),
      ),
      home: const WeatherPage(),
    );
  }
}
