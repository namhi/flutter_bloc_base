part of 'home_bloc.dart';

@immutable
@freezed
class HomeState with _$HomeState {
  factory HomeState({@Default(0) int index}) = _HomeState;
}
