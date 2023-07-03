import 'package:flutter/material.dart';
import 'package:untitled2/shared/usernames.dart';

class Login extends StatefulWidget {
  Login({super.key});
  static var player1;
  static var player2;
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formstate =  GlobalKey<FormState>();
    send() {
      var formdata = formstate.currentState;
      formdata?.save();
      print(Login.player2);
      print(Login.player1);
      Navigator.pushReplacementNamed(context, "multiPlayer");
    }

    return Scaffold(
        body: Center(
            child: Container(
              margin: EdgeInsets.only(top: 30),
              width: double.maxFinite,
      height: double.maxFinite,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.jpg"),
              fit: BoxFit.cover,
              colorFilter:
                  ColorFilter.mode(Colors.white10, BlendMode.lighten))),
      child: Form(
        key: formstate,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child:Usernames(player: Login.player1)
            ),
            Center(
              child: Usernames(player: Login.player2,)
            ),
            InkWell(
              onTap: send,
              child: Container(
                padding: const EdgeInsets.all(9),
                  decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(width: 4, color: Colors.white),
                            borderRadius: BorderRadius.circular(15)),
                  child: const Text("let's play ! ",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))),
            )
          ],
        ),
      ),
    )));
  }
}
//Container(
//                     alignment: AlignmentDirectional.center,
//                     child: InkWell(
//                       child: Container(
//                         width: 240,
//                         decoration: BoxDecoration(
//                             color: Colors.red,
//                             border: Border.all(width: 4, color: Colors.white),
//                             borderRadius: BorderRadius.circular(15)),
//                         child: Text(check.winner,
//                             textAlign: TextAlign.center,
//                             style: const TextStyle(
//                                 fontSize: 30,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                                 wordSpacing: 2)),
//                       ),
//                       onTap: () {
//                         setState(() {
//                           check.winner = " Play ";
//                           check.playerColor = Colors.green;
//                         });
//                       },
//                     ))