import 'package:flutter/material.dart';
import 'package:flutter_navigation_routing_sample/route_generator.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:  Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {

             // Navigator.popUntil(context, (route) => true) ;
            },
            child: const Text("Go Back"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, AppRoutes.thirdScreen) ;
            },
            child: const Text("Pop and Pushed Named"),
          ),
        ],
      ),
    ));
  }
}
