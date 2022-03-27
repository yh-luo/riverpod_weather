import 'package:go_router/go_router.dart';

import 'search/view/search_page.dart';
import 'settings/view/settings_page.dart';
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
