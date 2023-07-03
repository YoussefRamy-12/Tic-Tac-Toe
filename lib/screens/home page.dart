import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            child: Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.red,
                    border: Border.all(color: Colors.white, width: 4)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("images/single.png",
                        scale: 10, color: Colors.amber),
                    const Text("Single player",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                )),
            onTap: () {
              Navigator.pushNamed(context, "singlePlayer");
            },
          ),
          InkWell(
            child: Container(
                margin: const EdgeInsets.only(top: 80, left: 10, right: 10),
                padding: const EdgeInsets.only(left: 10, right: 30),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.red,
                    border: Border.all(color: Colors.white, width: 4)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "images/multi.png",
                      scale: 10,
                      color: Colors.amber,
                    ),
                    const Text("multiplayer",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                )
            ),
            onTap: (){
              Navigator.pushNamed(context, "Login");
            },
          )
        ],
      ),
    )));
    //
  }
}
