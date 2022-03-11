import 'package:flutter/material.dart';

class AppColors {
  AppColors._({
    this.primary,
    this.error,
    this.info,
    this.warning,
  });

  factory AppColors.light() {
    return AppColors._(
      primary: Colors.blue,
      error: Colors.blue,
      info: Colors.blue,
      warning: Colors.blue,
    );
  }

  factory AppColors.dark() {
    return AppColors._(
      primary: Colors.blue,
      error: Colors.blue,
      info: Colors.blue,
      warning: Colors.blue,
    );
  }

  final Color? primary;
  final Color? error;
  final Color? info;
  final Color? warning;
}
