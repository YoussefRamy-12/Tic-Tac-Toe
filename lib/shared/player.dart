// ignore_for_file: must_be_immutable, camel_case_types, non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:Tic_Tac_Toe/logic/checker.dart';
import 'package:flutter/material.dart';


class PLayer_icon extends StatelessWidget {

  String img ;
  String player ;
  Color playerColor ;
  int score;
  CheckerState check = CheckerState();
  
  PLayer_icon({super.key, required this.img, required this.player, required this.playerColor , required this.score} );
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          width: 120,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color.fromARGB(255, 54, 152, 244),
              border: Border.all(width: 4, color: playerColor )),
          child: Image.asset(img,
              fit: BoxFit.scaleDown, color: Colors.white),
        ),Container(
          margin: const EdgeInsets.only(bottom: 10),
          width: 50,
          padding: const EdgeInsets.only(left: 14 ,bottom: 10,top: 10 ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: const Color.fromARGB(255, 54, 152, 244),
              border: Border.all(width: 4, color: playerColor )),
          child: Text("$score", style: const TextStyle(color: Colors.white ,fontSize: 25 , fontWeight: FontWeight.bold ) ,)
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 54, 152, 244),
              border: Border.all(width: 4, color: playerColor)),
          child: Text(player,
              style:  const TextStyle(
                  fontSize: 17.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.white )),
        ),
      ],
    );
  }
}
