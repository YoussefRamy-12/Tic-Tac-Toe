import 'package:flutter/material.dart';

class SinglePlayer extends StatefulWidget {
  const SinglePlayer({super.key});

  @override
  State<StatefulWidget> createState() {
    return SinglePlayerState();
  }
}

class SinglePlayerState extends State<SinglePlayer> {
  var tempColor = List.filled(9, Colors.transparent);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ElevatedButton(
              onPressed: (){
                showDialog(context: context, barrierDismissible: false , builder: (BuildContext context){
                  return AlertDialog(
                    title: const Text(""),
                    content: const SingleChildScrollView(
                      child: ListBody(children: [
                        Text("we have told you soooon")
                      ],),
                    ),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, child: const Text("okay"))
                    ],

                  );
                });
                },
              child: const Text("soon"),
            )
        ));
  }
}
