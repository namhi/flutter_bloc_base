import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// extends [BlocObserver] and override event to Print to console.
class MyBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    debugPrint('${bloc.runtimeType} onEvent: $event');
    super.onEvent(bloc, event);
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('${bloc.runtimeType} Created');
    super.onCreate(bloc);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('${bloc.runtimeType} Change: $change');
    super.onChange(bloc, change);
  }
}
