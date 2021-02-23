import 'package:flutter/material.dart';

import 'package:cloudhost/src/ui/screens/screens.dart';

class RouteGenerator {
  static const String homeScreen = '/';
  static const String detailScreen = '/detail_screen';

  RouteGenerator._();

  static final key = GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const HomeScreen(),
        );
      case detailScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const DetailScreen(),
        );

      default:
        throw RouteException("Route Not found");
    }
  }
}

class RouteException implements Exception {
  final String message;
  const RouteException(this.message);
}
