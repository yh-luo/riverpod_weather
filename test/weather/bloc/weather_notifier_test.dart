// ignore_for_file: prefer_const_constructors
import 'package:riverpod_weather/weather/weather.dart' hide Weather;
import 'package:weather_repository/weather_repository.dart';
import 'package:flutter_test/flutter_test.dart';

const String location = 'Taipei';
final weather = Weather(
    location: location, temperature: 30, condition: WeatherCondition.clear);

class FakeWeatherRepository implements WeatherRepository {
  @override
  Future<Weather> getWeather(String city) async {
    return Future.delayed(Duration(milliseconds: 100), () => weather);
  }
}

class FakeWeatherRepositoryAlwaysThrows implements WeatherRepository {
  @override
  Future<Weather> getWeather(String city) async {
    return Future.delayed(Duration(milliseconds: 100), () => throw Exception());
  }
}

void main() {
  group('WeatherNotifier', () {
    test('initial state is correct', () {
      final weatherNotifier = WeatherNotifier(FakeWeatherRepository());
      expect(weatherNotifier.state, WeatherState());
    });

    group('start', () {
      test('updates [loading, success] when getWeather works', () {
        final weatherNotifier = WeatherNotifier(FakeWeatherRepository());
        weatherNotifier.start(location);
        expect(
            weatherNotifier.state,
            isA<WeatherState>()
                .having((s) => s.status, 'status', WeatherStatus.loading));
        Future.delayed(Duration(milliseconds: 100), () {
          expect(
              weatherNotifier.state,
              isA<WeatherState>()
                  .having((s) => s.status, 'status', WeatherStatus.success)
                  .having((s) => s.weather, 'weather', isNotNull)
                  .having((s) => s.weather!.location, 'location', location));
        });
      });

      test('updates [loading, failure] when getWeather throws', () {
        final weatherNotifier =
            WeatherNotifier(FakeWeatherRepositoryAlwaysThrows());
        weatherNotifier.start(location);
        expect(
            weatherNotifier.state,
            isA<WeatherState>()
                .having((s) => s.status, 'status', WeatherStatus.loading));
        Future.delayed(Duration(milliseconds: 100), () {
          expect(
              weatherNotifier.state,
              isA<WeatherState>()
                  .having((s) => s.status, 'status', WeatherStatus.failure)
                  .having((s) => s.weather, 'weather', isNull));
        });
      });
    });
  });
}
