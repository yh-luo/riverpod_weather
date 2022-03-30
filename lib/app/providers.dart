part of 'app.dart';

final weatherRepositoryProvider = Provider((ref) => WeatherRepository());
final weatherProvider = StateNotifierProvider<WeatherNotifier, WeatherState>(
    (ref) => WeatherNotifier(ref.watch(weatherRepositoryProvider)));
final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeState>((ref) {
  final themeNotifier = ThemeNotifier();
  final weatherState = ref.watch(weatherProvider);
  if (weatherState.weather != null) {
    themeNotifier.change(weatherState.weather!);
  }
  return themeNotifier;
});
