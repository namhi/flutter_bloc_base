import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState()) {
    on<HomeTabChanged>(_onTabChanged);
  }

  FutureOr<void> _onTabChanged(
    HomeTabChanged event,
    Emitter<HomeState> emit,
  ) {
    emit(
      state.copyWith(
        index: event.index,
      ),
    );
  }
}
