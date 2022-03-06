import 'package:flutter/material.dart';

class AppTheme {
  AppTheme({this.data});
  factory AppTheme.light() => AppTheme(
        data: ThemeData.light(),
      );

  factory AppTheme.dark() => AppTheme(data: ThemeData.dark());
  final ThemeData? data;
}
