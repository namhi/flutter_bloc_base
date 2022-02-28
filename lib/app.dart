import 'package:flutter/material.dart';
import 'package:flutter_bloc_base/generated/l10n.dart';
import 'package:flutter_bloc_base/theme/theme.dart';
import 'navigation/app_router.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final AppRouter _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = _appRouter.router;
    return MaterialApp.router(
      title: 'Flutter Base Project With Bloc',
      theme: AppTheme.light().data,
      darkTheme: AppTheme.dark().data,
      themeMode: ThemeMode.system,
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      supportedLocales: S.delegate.supportedLocales,
      localizationsDelegates: const [
        S.delegate,
      ],
    );
  }
}
