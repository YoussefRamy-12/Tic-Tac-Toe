// // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Usernames extends StatelessWidget {
  var player;
  Usernames({super.key, required this.player});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 90),
        width: 200,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.red,
            border: Border.all(width: 4, color: Colors.white)),
        child: TextFormField(
          cursorColor: Colors.white,
          maxLength: 10,
          textInputAction: TextInputAction.done,
          onSaved: (text) {
            player = text;
          },
          decoration: const InputDecoration(
              hintText: 'player name',
              prefixIcon: Icon(Icons.person, color: Colors.white)),
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ));
  }
}