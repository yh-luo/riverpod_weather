import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_repository/weather_repository.dart';

import '../../search/search.dart';
import '../../settings/settings.dart';
import '../../theme/theme.dart';
import '../weather.dart';

final repositoryProvider = Provider((ref) => WeatherRepository());
final weatherProvider = StateNotifierProvider<WeatherNotifier, WeatherState>(
    (ref) => WeatherNotifier(ref.watch(repositoryProvider)));
final themeProvider =
    StateNotifierProvider<ThemeNotifier, ThemeState>((ref) => ThemeNotifier());

class WeatherPage extends StatelessWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WeatherView();
  }
}

class WeatherView extends ConsumerWidget {
  const WeatherView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    WeatherState state = ref.watch(weatherProvider);
    if (state.status.isSuccess) {
      ref.read(themeProvider.notifier).change(state.weather!);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Weather'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => SettingsPage()));
            },
          ),
        ],
      ),
      body: Center(
        child: Builder(
          builder: (context) {
            switch (state.status) {
              case WeatherStatus.initial:
                return const WeatherEmpty();
              case WeatherStatus.loading:
                return const WeatherLoading();
              case WeatherStatus.success:
                return WeatherPopulated(
                    weather: state.weather!,
                    units: state.temperatureUnits,
                    onRefresh: () async {
                      ref.read(weatherProvider.notifier).refresh();
                    });
              default:
                return const WeatherError();
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.search),
        onPressed: () async {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => SearchPage()));
        },
      ),
    );
  }
}
