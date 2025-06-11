

import 'package:flutter/material.dart';
import 'package:wanderin/presentation/screens/HomeScreen.dart';



class AppRouter {
  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/second':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/third':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/fourth':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return MaterialPageRoute(builder: (_) =>
            Scaffold(body: Center(
                child: Text('No route defined for ${routeSettings.name}'))));
    }


  }
  void dispose(){}

}