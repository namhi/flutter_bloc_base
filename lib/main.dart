import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_base/app.dart';

import 'core/bloc_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // await FirebaseCrashlytics.instance
  //    .setCrashlyticsCollectionEnabled(kDebugMode);
  // final FlutterExceptionHandler? flutterOneError = FlutterError.onError;
  //FlutterError.onError = (details) async {
  //  await FirebaseCrashlytics.instance.recordFlutterError(details);
  //  flutterOneError?.call(details);
  //};

  if (kReleaseMode) {
    debugPrint = (message, {wrapWidth}) {};
  }

  runZonedGuarded(
    () {
      BlocOverrides.runZoned(
        () {
          runApp(App());
        },
        blocObserver: MyBlocObserver(),
      );
    },
    (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack);
    },
  );
}
