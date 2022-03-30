import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_repository/weather_repository.dart';

import '../search/search.dart';
import '../settings/settings.dart';
import '../theme/theme.dart';
import '../weather/weather.dart';

part 'providers.dart';
part 'router.dart';

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
