part of 'weather_notifier.dart';

enum WeatherStatus { initial, loading, success, failure }

extension WeatherStatusX on WeatherStatus {
  bool get isInitial => this == WeatherStatus.initial;
  bool get isLoading => this == WeatherStatus.loading;
  bool get isSuccess => this == WeatherStatus.success;
  bool get isFailure => this == WeatherStatus.failure;
}

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    @Default(WeatherStatus.initial) WeatherStatus status,
    @Default(TemperatureUnits.celsius) TemperatureUnits temperatureUnits,
    Weather? weather,
  }) = _WeatherState;
}
