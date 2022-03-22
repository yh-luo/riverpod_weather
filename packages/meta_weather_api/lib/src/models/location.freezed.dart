// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
class _$LocationTearOff {
  const _$LocationTearOff();

  _Location call(
      {required String title,
      @JsonKey(name: 'location_type')
          required LocationType locationType,
      @JsonKey(name: 'latt_long')
      @CoordinateConverter()
          required Coordinate coordinate,
      @JsonKey(name: 'woeid')
          required int id,
      int? distance}) {
    return _Location(
      title: title,
      locationType: locationType,
      coordinate: coordinate,
      id: id,
      distance: distance,
    );
  }

  Location fromJson(Map<String, Object?> json) {
    return Location.fromJson(json);
  }
}

/// @nodoc
const $Location = _$LocationTearOff();

/// @nodoc
mixin _$Location {
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_type')
  LocationType get locationType => throw _privateConstructorUsedError;
  @JsonKey(name: 'latt_long')
  @CoordinateConverter()
  Coordinate get coordinate => throw _privateConstructorUsedError;
  @JsonKey(name: 'woeid')
  int get id => throw _privateConstructorUsedError;
  int? get distance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res>;
  $Res call(
      {String title,
      @JsonKey(name: 'location_type') LocationType locationType,
      @JsonKey(name: 'latt_long') @CoordinateConverter() Coordinate coordinate,
      @JsonKey(name: 'woeid') int id,
      int? distance});

  $CoordinateCopyWith<$Res> get coordinate;
}

/// @nodoc
class _$LocationCopyWithImpl<$Res> implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  final Location _value;
  // ignore: unused_field
  final $Res Function(Location) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? locationType = freezed,
    Object? coordinate = freezed,
    Object? id = freezed,
    Object? distance = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      locationType: locationType == freezed
          ? _value.locationType
          : locationType // ignore: cast_nullable_to_non_nullable
              as LocationType,
      coordinate: coordinate == freezed
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as Coordinate,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $CoordinateCopyWith<$Res> get coordinate {
    return $CoordinateCopyWith<$Res>(_value.coordinate, (value) {
      return _then(_value.copyWith(coordinate: value));
    });
  }
}

/// @nodoc
abstract class _$LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) then) =
      __$LocationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      @JsonKey(name: 'location_type') LocationType locationType,
      @JsonKey(name: 'latt_long') @CoordinateConverter() Coordinate coordinate,
      @JsonKey(name: 'woeid') int id,
      int? distance});

  @override
  $CoordinateCopyWith<$Res> get coordinate;
}

/// @nodoc
class __$LocationCopyWithImpl<$Res> extends _$LocationCopyWithImpl<$Res>
    implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(_Location _value, $Res Function(_Location) _then)
      : super(_value, (v) => _then(v as _Location));

  @override
  _Location get _value => super._value as _Location;

  @override
  $Res call({
    Object? title = freezed,
    Object? locationType = freezed,
    Object? coordinate = freezed,
    Object? id = freezed,
    Object? distance = freezed,
  }) {
    return _then(_Location(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      locationType: locationType == freezed
          ? _value.locationType
          : locationType // ignore: cast_nullable_to_non_nullable
              as LocationType,
      coordinate: coordinate == freezed
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as Coordinate,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Location implements _Location {
  const _$_Location(
      {required this.title,
      @JsonKey(name: 'location_type')
          required this.locationType,
      @JsonKey(name: 'latt_long')
      @CoordinateConverter()
          required this.coordinate,
      @JsonKey(name: 'woeid')
          required this.id,
      this.distance});

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFromJson(json);

  @override
  final String title;
  @override
  @JsonKey(name: 'location_type')
  final LocationType locationType;
  @override
  @JsonKey(name: 'latt_long')
  @CoordinateConverter()
  final Coordinate coordinate;
  @override
  @JsonKey(name: 'woeid')
  final int id;
  @override
  final int? distance;

  @override
  String toString() {
    return 'Location(title: $title, locationType: $locationType, coordinate: $coordinate, id: $id, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Location &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.locationType, locationType) &&
            const DeepCollectionEquality()
                .equals(other.coordinate, coordinate) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.distance, distance));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(locationType),
      const DeepCollectionEquality().hash(coordinate),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(distance));

  @JsonKey(ignore: true)
  @override
  _$LocationCopyWith<_Location> get copyWith =>
      __$LocationCopyWithImpl<_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationToJson(this);
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {required String title,
      @JsonKey(name: 'location_type')
          required LocationType locationType,
      @JsonKey(name: 'latt_long')
      @CoordinateConverter()
          required Coordinate coordinate,
      @JsonKey(name: 'woeid')
          required int id,
      int? distance}) = _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  String get title;
  @override
  @JsonKey(name: 'location_type')
  LocationType get locationType;
  @override
  @JsonKey(name: 'latt_long')
  @CoordinateConverter()
  Coordinate get coordinate;
  @override
  @JsonKey(name: 'woeid')
  int get id;
  @override
  int? get distance;
  @override
  @JsonKey(ignore: true)
  _$LocationCopyWith<_Location> get copyWith =>
      throw _privateConstructorUsedError;
}

Coordinate _$CoordinateFromJson(Map<String, dynamic> json) {
  return _Coordinate.fromJson(json);
}

/// @nodoc
class _$CoordinateTearOff {
  const _$CoordinateTearOff();

  _Coordinate call({required double latitude, required double longitude}) {
    return _Coordinate(
      latitude: latitude,
      longitude: longitude,
    );
  }

  Coordinate fromJson(Map<String, Object?> json) {
    return Coordinate.fromJson(json);
  }
}

/// @nodoc
const $Coordinate = _$CoordinateTearOff();

/// @nodoc
mixin _$Coordinate {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordinateCopyWith<Coordinate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinateCopyWith<$Res> {
  factory $CoordinateCopyWith(
          Coordinate value, $Res Function(Coordinate) then) =
      _$CoordinateCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$CoordinateCopyWithImpl<$Res> implements $CoordinateCopyWith<$Res> {
  _$CoordinateCopyWithImpl(this._value, this._then);

  final Coordinate _value;
  // ignore: unused_field
  final $Res Function(Coordinate) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$CoordinateCopyWith<$Res> implements $CoordinateCopyWith<$Res> {
  factory _$CoordinateCopyWith(
          _Coordinate value, $Res Function(_Coordinate) then) =
      __$CoordinateCopyWithImpl<$Res>;
  @override
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$CoordinateCopyWithImpl<$Res> extends _$CoordinateCopyWithImpl<$Res>
    implements _$CoordinateCopyWith<$Res> {
  __$CoordinateCopyWithImpl(
      _Coordinate _value, $Res Function(_Coordinate) _then)
      : super(_value, (v) => _then(v as _Coordinate));

  @override
  _Coordinate get _value => super._value as _Coordinate;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_Coordinate(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Coordinate implements _Coordinate {
  const _$_Coordinate({required this.latitude, required this.longitude});

  factory _$_Coordinate.fromJson(Map<String, dynamic> json) =>
      _$$_CoordinateFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'Coordinate(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Coordinate &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude));

  @JsonKey(ignore: true)
  @override
  _$CoordinateCopyWith<_Coordinate> get copyWith =>
      __$CoordinateCopyWithImpl<_Coordinate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoordinateToJson(this);
  }
}

abstract class _Coordinate implements Coordinate {
  const factory _Coordinate(
      {required double latitude, required double longitude}) = _$_Coordinate;

  factory _Coordinate.fromJson(Map<String, dynamic> json) =
      _$_Coordinate.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$CoordinateCopyWith<_Coordinate> get copyWith =>
      throw _privateConstructorUsedError;
}
