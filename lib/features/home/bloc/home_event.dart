part of 'home_bloc.dart';

@immutable
abstract class HomeEvent extends Equatable {}

class HomeTabChanged extends HomeEvent {
  HomeTabChanged(this.index);

  final int index;

  @override
  String toString() {
    return 'HomeTabChanged{index: $index}';
  }

  @override
  List<Object?> get props => [index];
}
