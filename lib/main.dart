import 'package:cloudhost/src/core/localization/app_locales.dart';
import 'package:cloudhost/src/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp();
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final locale = watch(AppLocaleProvider.provider);
    return MaterialApp(
      theme: ThemeData.light(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: locale.locale,
      title: 'AppName',
      onGenerateTitle: (_) => "AppName",
      debugShowCheckedModeBanner: false,
      navigatorKey: RouteGenerator.key,
      initialRoute: RouteGenerator.homeScreen,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
