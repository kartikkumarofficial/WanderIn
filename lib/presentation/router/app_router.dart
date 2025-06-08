

import 'package:flutter/material.dart';

import '../screens/ExploreScreen.dart';


class AppRouter {
  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => ExploreScreen());
      case '/second':
        return MaterialPageRoute(builder: (_) => ExploreScreen());
      case '/third':
        return MaterialPageRoute(builder: (_) => ExploreScreen());
      case '/fourth':
        return MaterialPageRoute(builder: (_) => ExploreScreen());
      default:
        return MaterialPageRoute(builder: (_) =>
            Scaffold(body: Center(
                child: Text('No route defined for ${routeSettings.name}'))));
    }


  }
  void dispose(){}

}