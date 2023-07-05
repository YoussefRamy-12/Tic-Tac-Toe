
import 'package:flutter/material.dart';

import 'play again.dart';
import 'screens/home page.dart';
import 'screens/login.dart';
import 'screens/multiplayer_page.dart';
import 'screens/singleplayer_page.dart';

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