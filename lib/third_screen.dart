import 'package:flutter/material.dart';
import 'package:flutter_navigation_routing_sample/route_generator.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, AppRoutes.fourthScreen , (route) => false) ;
        },
        child: const Text("Login Screen"),
      ),),
    );
  }
}
