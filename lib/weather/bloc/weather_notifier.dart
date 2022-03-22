import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:weather_repository/weather_repository.dart'
    show WeatherRepository;

import '../models/models.dart';

part 'weather_state.dart';
part 'weather_notifier.freezed.dart';

class WeatherNotifier extends StateNotifier<WeatherState> {
  WeatherNotifier(this._weatherRepository) : super(const WeatherState());

  final WeatherRepository _weatherRepository;

  Future<void> start(String? city) async {
    if (city == null || city.isEmpty) {
      return;
    }
    state = state.copyWith(status: WeatherStatus.loading);

    try {
      final weather = Weather.fromRepository(
        await _weatherRepository.getWeather(city),
      );
      final units = state.temperatureUnits;
      final value = units.isFahrenheit
          ? weather.temperature.value.toFahrenheit()
          : weather.temperature.value;

      state = state.copyWith(
        status: WeatherStatus.success,
        temperatureUnits: units,
        weather: weather.copyWith(temperature: Temperature(value: value)),
      );
    } on Exception {
      state = state.copyWith(status: WeatherStatus.failure);
    }
  }

  Future<void> refresh() async {
    if (!state.status.isSuccess || state.weather == null) {
      return;
    }

    try {
      final weather = Weather.fromRepository(
        await _weatherRepository.getWeather(state.weather!.location),
      );
      final units = state.temperatureUnits;
      final value = units.isFahrenheit
          ? weather.temperature.value.toFahrenheit()
          : weather.temperature.value;

      state = state.copyWith(
        status: WeatherStatus.success,
        temperatureUnits: units,
        weather: weather.copyWith(temperature: Temperature(value: value)),
      );
    } on Exception {
      state = state;
    }
  }

  void changeUnits() {
    final units = state.temperatureUnits.isFahrenheit
        ? TemperatureUnits.celsius
        : TemperatureUnits.fahrenheit;

    if (!state.status.isSuccess) {
      state = state.copyWith(temperatureUnits: units);
      return;
    }

    final weather = state.weather;
    if (weather != Weather.empty) {
      final temperature = weather!.temperature;
      final value = units.isCelsius
          ? temperature.value.toCelsius()
          : temperature.value.toFahrenheit();

      state = state.copyWith(
        temperatureUnits: units,
        weather: weather.copyWith(temperature: Temperature(value: value)),
      );
    }
  }
}

extension on double {
  double toFahrenheit() => ((this * 9 / 5) + 32);
  double toCelsius() => ((this - 32) * 5 / 9);
}
