import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_navigation_routing_sample/route_generator.dart';

class FirstScreen extends StatefulWidget{
  const FirstScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FirstScreenState();
  }
}
class FirstScreenState extends State<FirstScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            List<String> playerNames = ["Muhammad Salah" , "Cristiano Ronaldo", "Lionel Messi", "Neymar",];
            displayResult(context,playerNames);
          },
          child: const Text("Select Best Football Player"),
        ),
      ),
    );
  }

  displayResult(BuildContext context, List<String> playerNames, ) async{
    final getSelectedPlayerName = await Navigator.pushNamed(context, AppRoutes.secondScreen ,
       // "/SecondScreen",
        arguments: playerNames );
    print(getSelectedPlayerName.toString());
  }


}

