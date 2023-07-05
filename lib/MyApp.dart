import 'package:flutter/material.dart';
import 'package:untitled2/screens/home%20page.dart';
import 'package:untitled2/screens/login.dart';
import 'package:untitled2/screens/multiplayer_page.dart';
import 'package:untitled2/play%20again.dart';
import 'package:untitled2/screens/singleplayer_page.dart';
class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
        routes: {
        "singlePlayer" : (context) => const SinglePlayer() ,
          "multiPlayer" : (context) => const Multiplayer(),
          "Login" : (context) =>  const Login(),
          "playagain" : (context) => Repeat()
    },
    );
  }


}