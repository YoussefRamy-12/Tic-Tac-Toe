// ignore_for_file: non_constant_identifier_names, avoid_print


import 'package:Tic_Tac_Toe/logic/random.dart';
import 'package:flutter/material.dart';

import '../screens/login.dart';

class Checker extends StatefulWidget {
  const Checker({super.key});

  @override
  State<StatefulWidget> createState() {
    return CheckerState();
  }
}

class CheckerState extends State<Checker> {
  List tempColor = List.filled(9, Colors.white);
  List sympols = List.filled(9, const AssetImage('images/white.jpg'));
  List game = List.filled(9, 0);
  int check = 0;
  int player1_score = 0;
  int player2_score = 0;
  bool firstPlayer = true;
  String winner = "who starts?";
  int movement_counter = 0;
  Color playerColor = Colors.white;
  Color playerColor2 = Colors.white;

  void reset() {
    for (int x = 0; x < 9; x++) {
      tempColor[x] = Colors.white;
      sympols[x] = const AssetImage('images/white.jpg');
      game[x] = 0;
    }
    playerColor = Colors.white;
    playerColor2 = Colors.white;
    firstPlayer = true;
    winner = "who starts?";
    movement_counter = 0;
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
        movement_counter >= 5) {
      return 1;
    } else if (game[3] == game[4] &&
        game[3] == game[5] &&
        game[3] != 0 &&
        movement_counter >= 5) {
      return 1;
    } else if (game[6] == game[7] &&
        game[6] == game[8] &&
        game[6] != 0 &&
        movement_counter >= 5) {
      return 1;
    }

    // checking rows
    else if (game[0] == game[3] &&
        game[0] == game[6] &&
        game[0] != 0 &&
        movement_counter >= 5) {
      return 1;
    } else if (game[1] == game[4] &&
        game[1] == game[7] &&
        game[1] != 0 &&
        movement_counter >= 5) {
      return 1;
    } else if (game[2] == game[5] &&
        game[2] == game[8] &&
        game[2] != 0 &&
        movement_counter >= 5) {
      return 1;
    }

    //checking diagonal
    else if (game[0] == game[4] &&
        game[0] == game[8] &&
        game[0] != 0 &&
        movement_counter >= 5) {
      return 1;
    } else if (game[2] == game[4] &&
        game[2] == game[6] &&
        game[2] != 0 &&
        movement_counter >= 5) {
      return 1;
    } else if (movement_counter < 9) {
      return 0;
    } else {
      return -1;
    }
  }

  bool FirstPlayer() {
    int rand = RandomNum();
    if (winner == "who starts?") {
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
      movement_counter++;
    } else {
      game[n] = 2;
      sympols[n] = const AssetImage('images/o.png');
      firstPlayer = true;
      playerColor2 = Colors.white;
      playerColor = const Color.fromARGB(255, 3, 142, 7);
      movement_counter++;
    }
    if (check_win() == 1 && firstPlayer == false) {
      winner = Login.player1 + " won";
      player1_score++;

      playerColor2 = Colors.white;
      playerColor = const Color.fromARGB(255, 3, 142, 7);
    } else if (check_win() == 1 && firstPlayer == true) {
      winner = Login.player2 + " won";
      player2_score++;

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
    if (winner != Login.player1 + " won" &&
        winner != Login.player2 + " won" &&
        winner != "draw" &&
        winner != "who starts?") {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
