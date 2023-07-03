// ignore_for_file: avoid_unnecessary_containers, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:untitled2/logic/checker.dart';

class Repeat extends StatelessWidget {
  CheckerState check = CheckerState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/background.jpg"),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.white10, BlendMode.lighten))),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.blue
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:[ Text("The winner is${check.winner}"),
                    InkWell(
                  child: const Text( "click here to play again" ),
                      onTap: (){
                    Navigator.of(context).pop();
                      },
    )]),),
          )),
    )));
  }
}
