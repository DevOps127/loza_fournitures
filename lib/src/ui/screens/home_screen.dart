import 'package:cloudhost/src/core/localization/app_locales.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen();

  Widget build(BuildContext context, ScopedReader watch) {
    final language = watch(AppLocaleProvider.provider);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).appName),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(AppLocalizations.of(context).helloWorld),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('English'),
              Switch(
                onChanged: (bool value) {
                  value
                      ? context
                          .read(AppLocaleProvider.provider)
                          .changeLocale(Locale("fr"))
                      : context
                          .read(AppLocaleProvider.provider)
                          .changeLocale(Locale("en"));
                  print(value.toString() + ' | ' + language.locale.toString());
                },
                value: language.locale == Locale('en') ? false : true,
              ),
              Text('French'),
            ],
          ),
        ],
      ),
    );
  }
}
