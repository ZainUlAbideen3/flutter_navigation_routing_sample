import 'package:flutter/material.dart';
import 'package:flutter_navigation_routing_sample/fourthScreen.dart';
import 'package:flutter_navigation_routing_sample/second_screen.dart';
import 'package:flutter_navigation_routing_sample/third_screen.dart';


import 'first_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed

    final args = settings.arguments;

    switch (settings.name) {
    // case '/FirstScreen':
      case AppRoutes.firstScreen :
        return buildPage(const FirstScreen(), settings: settings);
    // return MaterialPageRoute(builder: (_) => const FirstScreen());
    // case '/SecondScreen':
      case AppRoutes.secondScreen :
      // Validation of correct data type
        if (args is List<String>) {
          return buildPage(
              SecondScreen(listPlayerNames: args), settings: settings);
          // return MaterialPageRoute(
          //   builder: (_) => SecondScreen(
          //     listPlayerNames: args,
          //   ),
          // );
        }
        return _errorRoute();
      case AppRoutes.thirdScreen :
        return buildPage(const ThirdScreen(), settings: settings) ;
      case AppRoutes.fourthScreen :
        return buildPage(const FourthScreen(), settings: settings) ;

        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.

      default:
      // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }

  static MaterialPageRoute buildPage(Widget child,
      {required RouteSettings settings}) {
    return MaterialPageRoute(settings: settings,
      builder: (context) {
        return child;
      },);
  }

  static Route<dynamic> _errorPage() {
    return MaterialPageRoute(builder: (context) {
      return const Scaffold(
        body: Center(child: Text(
            "Error text"
        ),),
      );
    },);
  }
}
class AppRoutes {
  static const  firstScreen = "/firstScreen" ;
  static const secondScreen = "/secondScreen" ;
  static const thirdScreen = "/thirdScreen"  ;
  static const fourthScreen = "/fourthScreen" ;

}




