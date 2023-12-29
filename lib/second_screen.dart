import 'package:flutter/material.dart';
import 'package:flutter_navigation_routing_sample/route_generator.dart';

class SecondScreen extends StatefulWidget {
  final List<String> listPlayerNames;
  const SecondScreen({super.key, required this.listPlayerNames});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              for(var playerName in widget.listPlayerNames)
                Container(
                  margin: const EdgeInsets.only(top:15, bottom:15),
                  child: ElevatedButton(
                      onPressed: () {

                        Navigator.pop(context,playerName);
                      },
                      child : Text(playerName.toString())
                  ),
                ) ,
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.thirdScreen ) ;
                },
                child: const Text("Go Login Screen"),
              ),
            ],
          ),
        )
    );
  }
}





