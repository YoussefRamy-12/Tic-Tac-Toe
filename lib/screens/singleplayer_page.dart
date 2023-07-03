import 'package:flutter/material.dart';

class SinglePlayer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SinglePlayerState();
  }
}

class SinglePlayerState extends State<SinglePlayer> {
  var tempColor = new List.filled(9, Colors.transparent);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ElevatedButton(
              onPressed: (){
                showDialog(context: context, barrierDismissible: false , builder: (BuildContext context){
                  return AlertDialog(
                    title: Text(""),
                    content: SingleChildScrollView(
                      child: ListBody(children: [
                        Text("we have told you soooon")
                      ],),
                    ),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, child: Text("okay"))
                    ],

                  );
                });
                },
              child: Text("soon"),
            )
        ));
  }
}
