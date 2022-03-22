// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeatherStateTearOff {
  const _$WeatherStateTearOff();

  _WeatherState call(
      {WeatherStatus status = WeatherStatus.initial,
      TemperatureUnits temperatureUnits = TemperatureUnits.celsius,
      Weather? weather}) {
    return _WeatherState(
      status: status,
      temperatureUnits: temperatureUnits,
      weather: weather,
    );
  }
}

/// @nodoc
const $WeatherState = _$WeatherStateTearOff();

/// @nodoc
mixin _$WeatherState {
  WeatherStatus get status => throw _privateConstructorUsedError;
  TemperatureUnits get temperatureUnits => throw _privateConstructorUsedError;
  Weather? get weather => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
  $Res call(
      {WeatherStatus status,
      TemperatureUnits temperatureUnits,
      Weather? weather});

  $WeatherCopyWith<$Res>? get weather;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? temperatureUnits = freezed,
    Object? weather = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WeatherStatus,
      temperatureUnits: temperatureUnits == freezed
          ? _value.temperatureUnits
          : temperatureUnits // ignore: cast_nullable_to_non_nullable
              as TemperatureUnits,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather?,
    ));
  }

  @override
  $WeatherCopyWith<$Res>? get weather {
    if (_value.weather == null) {
      return null;
    }

    return $WeatherCopyWith<$Res>(_value.weather!, (value) {
      return _then(_value.copyWith(weather: value));
    });
  }
}

/// @nodoc
abstract class _$WeatherStateCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$WeatherStateCopyWith(
          _WeatherState value, $Res Function(_WeatherState) then) =
      __$WeatherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {WeatherStatus status,
      TemperatureUnits temperatureUnits,
      Weather? weather});

  @override
  $WeatherCopyWith<$Res>? get weather;
}

/// @nodoc
class __$WeatherStateCopyWithImpl<$Res> extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateCopyWith<$Res> {
  __$WeatherStateCopyWithImpl(
      _WeatherState _value, $Res Function(_WeatherState) _then)
      : super(_value, (v) => _then(v as _WeatherState));

  @override
  _WeatherState get _value => super._value as _WeatherState;

  @override
  $Res call({
    Object? status = freezed,
    Object? temperatureUnits = freezed,
    Object? weather = freezed,
  }) {
    return _then(_WeatherState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WeatherStatus,
      temperatureUnits: temperatureUnits == freezed
          ? _value.temperatureUnits
          : temperatureUnits // ignore: cast_nullable_to_non_nullable
              as TemperatureUnits,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather?,
    ));
  }
}

/// @nodoc

class _$_WeatherState implements _WeatherState {
  const _$_WeatherState(
      {this.status = WeatherStatus.initial,
      this.temperatureUnits = TemperatureUnits.celsius,
      this.weather});

  @JsonKey()
  @override
  final WeatherStatus status;
  @JsonKey()
  @override
  final TemperatureUnits temperatureUnits;
  @override
  final Weather? weather;

  @override
  String toString() {
    return 'WeatherState(status: $status, temperatureUnits: $temperatureUnits, weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.temperatureUnits, temperatureUnits) &&
            const DeepCollectionEquality().equals(other.weather, weather));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(temperatureUnits),
      const DeepCollectionEquality().hash(weather));

  @JsonKey(ignore: true)
  @override
  _$WeatherStateCopyWith<_WeatherState> get copyWith =>
      __$WeatherStateCopyWithImpl<_WeatherState>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  const factory _WeatherState(
      {WeatherStatus status,
      TemperatureUnits temperatureUnits,
      Weather? weather}) = _$_WeatherState;

  @override
  WeatherStatus get status;
  @override
  TemperatureUnits get temperatureUnits;
  @override
  Weather? get weather;
  @override
  @JsonKey(ignore: true)
  _$WeatherStateCopyWith<_WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}
