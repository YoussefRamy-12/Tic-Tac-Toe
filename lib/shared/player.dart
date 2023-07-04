// ignore_for_file: must_be_immutable, camel_case_types, non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:untitled2/logic/checker.dart';

class PLayer_icon extends StatelessWidget {

  String img = '';
  var player = '' ;
  Color playerColor ;
  CheckerState check = CheckerState();
  
  PLayer_icon({super.key, required this.img, required this.player, required this.playerColor , } );
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          width: 120,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color.fromARGB(255, 54, 152, 244),
              border: Border.all(width: 4, color: playerColor )),
          child: Image.asset(img,
              fit: BoxFit.scaleDown, color: Colors.white),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromARGB(255, 54, 152, 244),
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
