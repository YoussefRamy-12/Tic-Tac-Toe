// ignore_for_file: non_constant_identifier_names, avoid_print

import 'package:untitled2/logic/random.dart';
import 'package:untitled2/screens/login.dart';
import 'package:flutter/material.dart';

class Checker extends StatefulWidget {
  const Checker({super.key});

  @override
  State<StatefulWidget> createState() {
    return CheckerState();
  }
}

class CheckerState extends State<Checker> {
  var tempColor = List.filled(9, Colors.white);
  List sympols = List.filled(9, const AssetImage('images/white.jpg'));
  List game = List.filled(9, 0);
  int check = 0;
  double s = 0;
  int pl = 0;
  bool firstPlayer = true;
  String winner = "Press to Play";
  int counter = 0;
  var playerColor = Colors.white;
  var playerColor2 = Colors.white;

  void reset() {
    for (var x = 0; x < 9; x++) {
      tempColor[x] = Colors.white;
      sympols[x] = const AssetImage('images/white.jpg');
      game[x] = 0;
    }
    playerColor = Colors.white;
    playerColor2 = Colors.white;
    firstPlayer = true;
    winner = "Press to Play";
    pl = 0;
    counter = 0;
  }

  // Future<void> dialogBuilder(BuildContext context) {
  //   return showDialog<void>(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: const Text('Winner Winner '),
  //         content: Text('the winner is $winner'),
  //         actions: <Widget>[
  //           TextButton(
  //             style: TextButton.styleFrom(
  //               textStyle: Theme.of(context).textTheme.labelLarge,
  //             ),
  //             child: const Text('play again'),
  //             onPressed: () {
  //               reset();
  //               Navigator.of(context).pop();
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  int check_win() {
    // checking columns
    if (game[0] == game[1] &&
        game[0] == game[2] &&
        game[0] != 0 &&
        counter >= 5) {
      return 1;
    } else if (game[3] == game[4] &&
        game[3] == game[5] &&
        game[3] != 0 &&
        counter >= 5) {
      return 1;
    } else if (game[6] == game[7] &&
        game[6] == game[8] &&
        game[6] != 0 &&
        counter >= 5) {
      return 1;
    }

    // checking rows
    else if (game[0] == game[3] &&
        game[0] == game[6] &&
        game[0] != 0 &&
        counter >= 5) {
      return 1;
    } else if (game[1] == game[4] &&
        game[1] == game[7] &&
        game[1] != 0 &&
        counter >= 5) {
      return 1;
    } else if (game[2] == game[5] &&
        game[2] == game[8] &&
        game[2] != 0 &&
        counter >= 5) {
      return 1;
    }

    //checking diagonal
    else if (game[0] == game[4] &&
        game[0] == game[8] &&
        game[0] != 0 &&
        counter >= 5) {
      return 1;
    } else if (game[2] == game[4] &&
        game[2] == game[6] &&
        game[2] != 0 &&
        counter >= 5) {
      return 1;
    } else if (counter < 9) {
      return 0;
    } else {
      return -1;
    }
  }

  bool FirstPlayer() {
    int rand = RandomNum();
    if (winner == "Press to Play") {
      if (rand == 0) {
        print(rand);
        firstPlayer = false;
        playerColor2 = const Color.fromARGB(255, 3, 142, 7);
        playerColor = Colors.white;
        winner = Login.player2 + " start";
        
      } else if (rand == 1) {
        print(rand);
        firstPlayer = true;
        playerColor2 = Colors.white;
        playerColor = const Color.fromARGB(255, 3, 142, 7);
        winner = Login.player1 + " start";
       
      }
       return false;
    }
    return true;
  }

  void press(int n) {
    if (firstPlayer == true) {
      game[n] = 1;
      sympols[n] = const AssetImage('images/close.png');
      firstPlayer = false;
      playerColor2 = const Color.fromARGB(255, 3, 142, 7);
      playerColor = Colors.white;
      counter++;
    } else {
      game[n] = 2;
      sympols[n] = const AssetImage('images/o.png');
      firstPlayer = true;
      playerColor2 = Colors.white;
      playerColor = const Color.fromARGB(255, 3, 142, 7);
      counter++;
    }
    if (check_win() == 1 && firstPlayer == false) {
      winner = Login.player1 + " won";
      playerColor2 = Colors.white;
      playerColor = const Color.fromARGB(255, 3, 142, 7);
    } else if (check_win() == 1 && firstPlayer == true) {
      winner = Login.player2 + " won";
      playerColor2 = const Color.fromARGB(255, 3, 142, 7);
      playerColor = Colors.white;
    } else if (check_win() == 0 && firstPlayer == true) {
      winner = Login.player1 + " turn";
    } else if (check_win() == 0 && firstPlayer == false) {
      winner = Login.player2 + " turn";
    } else if (check_win() == -1) {
      winner = "draw";
      playerColor = Colors.white;
      playerColor2 = Colors.white;
    }
  }

  bool endGame() {
   if (winner !=Login.player1 + " won" && winner!=Login.player2 + " won" &&  winner != "draw" && winner != "Press to Play") {
    return false;
   }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
