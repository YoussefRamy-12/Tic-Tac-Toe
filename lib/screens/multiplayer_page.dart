import 'package:flutter/material.dart';
import 'package:untitled2/logic/checker.dart';
import 'package:untitled2/screens/login.dart';
import 'package:untitled2/shared/player.dart';


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
            margin: const EdgeInsets.only(top: 30),
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
                    PLayer_icon(
                        img: 'images/close.png',
                        player:  Login.player1,
                        playerColor: check.playerColor),
                    PLayer_icon(
                        img: 'images/o.png',
                        player: Login.player2,
                        playerColor: check.playerColor2),
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
                  child: GridView.builder(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 2 / 2,
                              crossAxisSpacing: .5,
                              mainAxisSpacing: .5),
                      itemCount: 9,
                      itemBuilder: (BuildContext context, int index) {
                        return GridTile(
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: check.sympols[index], scale: 8),
                                color: check.tempColor[index],
                                border:
                                    Border.all(color: Colors.black, width: 3)),
                            child: InkWell(onTap: () {
                              setState(() {
                                check.press(index);
                                
                              });
                            }),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
