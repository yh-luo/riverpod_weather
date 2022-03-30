part of 'app.dart';

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
