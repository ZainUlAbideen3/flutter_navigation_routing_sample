import 'package:flutter/material.dart';
import 'package:flutter_navigation_routing_sample/route_generator.dart';
import 'package:flutter_navigation_routing_sample/second_screen.dart';
import 'first_screen.dart';

void main () {
  runApp(const MyApp()) ;
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    initialRoute: AppRoutes.firstScreen,
    //  home: FirstScreen(),
      onGenerateRoute:  RouteGenerator.generateRoute,
    );
  }
}
