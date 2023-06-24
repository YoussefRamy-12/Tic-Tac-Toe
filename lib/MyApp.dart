import 'package:flutter/material.dart';
import 'package:untitled2/home%20page.dart';
import 'package:untitled2/login.dart';
import 'package:untitled2/multiplayer_page.dart';
import 'package:untitled2/play%20again.dart';
import 'package:untitled2/singleplayer_page.dart';
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
        routes: {
        "singlePlayer" : (context) => SinglePlayer() ,
          "multiPlayer" : (context) => const Multiplayer(),
          "Login" : (context) =>  Login(),
          "playagain" : (context) => Repeat()
    },
    );
  }


}