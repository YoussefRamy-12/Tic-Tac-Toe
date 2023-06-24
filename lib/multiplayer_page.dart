import 'package:flutter/material.dart';
import 'package:untitled2/checker.dart';
import 'package:untitled2/login.dart';

class Multiplayer extends StatefulWidget {
  const Multiplayer({super.key});

  @override
  State<StatefulWidget> createState() {
    return MultiPlayerState();
  }
}

class MultiPlayerState extends State<Multiplayer> {
  CheckerState check = CheckerState();
  var player1 = Login.player1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.replay, size: 36),
            onPressed: () {
              setState(() {
                check.reset();
              });
            }),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          width: 120,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.red,
                              border: Border.all(
                                  width: 4, color: check.playerColor)),
                          child: Image.asset('images/close.png',
                              fit: BoxFit.scaleDown, color: Colors.white),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.red,
                              border: Border.all(
                                  width: 4, color: check.playerColor)),
                          child: Text(  Login.player1 ,
                              style: const TextStyle(
                                  fontSize: 17.5,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          width: 120,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.red,
                              border: Border.all(
                                  width: 4, color: check.playerColor2)),
                          child: Image.asset('images/o.png',
                              fit: BoxFit.scaleDown, color: Colors.white),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.red,
                              border: Border.all(
                                  width: 4, color: check.playerColor2)),
                          child: Text( Login.player2,
                              style: const TextStyle(
                                  fontSize: 17.5,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                    alignment: AlignmentDirectional.center,
                    child: InkWell(
                      child: Container(
                        width: 240,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(width: 4, color: Colors.white),
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(check.winner,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                wordSpacing: 2)),
                      ),
                      onTap: () {
                        setState(() {
                          check.winner = " Play ";
                          check.playerColor = Colors.green;
                        });
                      },
                    )),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: check.sympols[0] , scale: 8),
                                color: check.tempColor[0],
                                border:
                                    Border.all(color: Colors.black, width: 2)),
                            child: InkWell(onTap: () {
                              setState(() {
                                check.press(0);
                              });
                            }),
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: check.sympols[1],scale: 8),
                                color: check.tempColor[1],
                                border:
                                    Border.all(color: Colors.black, width: 2)),
                            child: InkWell(onTap: () {
                              setState(() {
                                check.press(1);
                              });
                            }),
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: check.sympols[2],scale: 8),
                                color: check.tempColor[2],
                                border:
                                    Border.all(color: Colors.black, width: 2)),
                            child: InkWell(onTap: () {
                              setState(() {
                                check.press(2);
                              });
                            }),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: check.sympols[3],scale: 8),
                                color: check.tempColor[3],
                                border:
                                    Border.all(color: Colors.black, width: 2)),
                            child: InkWell(onTap: () {
                              setState(() {
                                check.press(3);
                              });
                            }),
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: check.sympols[4],scale: 8),
                                color: check.tempColor[4],
                                border:
                                    Border.all(color: Colors.black, width: 2)),
                            child: InkWell(onTap: () {
                              setState(() {
                                check.press(4);
                              });
                            }),
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: check.sympols[5],scale: 8),
                                color: check.tempColor[5],
                                border:
                                    Border.all(color: Colors.black, width: 2)),
                            child: InkWell(onTap: () {

                              setState(() {

                                check.press(5);
                              });
                            }),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: check.sympols[6],scale: 8),
                                color: check.tempColor[6],
                                border:
                                    Border.all(color: Colors.black, width: 2)),
                            child: InkWell(onTap: () {
                              setState(() {
                                check.press(6);
                              });
                            }),
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: check.sympols[7],scale: 8),
                                color: check.tempColor[7],
                                border:
                                    Border.all(color: Colors.black, width: 2)),
                            child: InkWell(onTap: () {
                              setState(() {
                                check.press(7);
                              });
                            }),
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: check.sympols[8],scale: 8),
                                color: check.tempColor[8],
                                border:
                                    Border.all(color: Colors.black, width: 2)),
                            child: InkWell(onTap: () {
                              setState(() {
                                check.press(8);
                              });
                            }),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
