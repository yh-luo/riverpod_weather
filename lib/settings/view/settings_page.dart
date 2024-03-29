import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app/app.dart';
import '../../weather/weather.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    WeatherState state = ref.watch(weatherProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Temperature Units'),
            isThreeLine: true,
            subtitle: const Text(
              'Use metric measurements for temperature units.',
            ),
            trailing: Switch(
                value: state.temperatureUnits.isCelsius,
                onChanged: (_) {
                  ref.read(weatherProvider.notifier).changeUnits();
                }),
          ),
        ],
      ),
    );
  }
}
