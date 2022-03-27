import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_repository/weather_repository.dart';

import 'weather/weather.dart';
import 'theme/theme.dart';
import 'router.dart';

final weatherProvider = StateNotifierProvider<WeatherNotifier, WeatherState>(
    (ref) => WeatherNotifier(WeatherRepository()));
final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeState>((ref) {
  final themeNotifier = ThemeNotifier();
  final weatherState = ref.watch(weatherProvider);
  if (weatherState.weather != null) {
    themeNotifier.change(weatherState.weather!);
  }
  return themeNotifier;
});

class WeatherApp extends ConsumerWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ThemeState state = ref.watch(themeProvider);
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      theme: ThemeData(
        primaryColor: state.color,
        textTheme: GoogleFonts.rajdhaniTextTheme(),
        appBarTheme: AppBarTheme(
          titleTextStyle: GoogleFonts.rajdhaniTextTheme(textTheme)
              .apply(bodyColor: Colors.white)
              .headline6,
        ),
      ),
    );
  }
}
