import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';

import '../../weather/weather.dart';

part 'theme_state.dart';
part 'theme_notifier.freezed.dart';

class ThemeNotifier extends StateNotifier<ThemeState> {
  ThemeNotifier() : super(_Initial());

  void change(Weather weather) {
    state = _Loaded(weather.toColor);
  }
}

extension on Weather {
  Color get toColor {
    switch (condition) {
      case WeatherCondition.clear:
        return Colors.orangeAccent;
      case WeatherCondition.snowy:
        return Colors.lightBlueAccent;
      case WeatherCondition.cloudy:
        return Colors.blueGrey;
      case WeatherCondition.rainy:
        return Colors.indigoAccent;
      case WeatherCondition.unknown:
      default:
        return _Initial().color;
    }
  }
}
