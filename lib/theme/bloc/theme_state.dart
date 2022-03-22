part of 'theme_notifier.dart';

@freezed
class ThemeState with _$ThemeState {
  factory ThemeState.initial({@Default(Color(0xFF2196F3)) Color color}) =
      _Initial;
  const factory ThemeState.loaded(Color color) = _Loaded;
}
