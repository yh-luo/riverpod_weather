import 'package:go_router/go_router.dart';

import 'search/search.dart';
import 'settings/settings.dart';
import 'weather/weather.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const WeatherPage(),
  ),
  GoRoute(
    path: '/search',
    builder: (context, state) => const SearchPage(),
  ),
  GoRoute(
    path: '/settings',
    builder: (context, state) => const SettingsPage(),
  ),
]);
