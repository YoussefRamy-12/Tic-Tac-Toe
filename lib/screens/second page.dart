import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SecondPageState();
  }
}
class SecondPageState extends State<SecondPage>{

  var NewColor = Colors.red;
  var Newicon = Icons.add;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
       appBar: AppBar(

       ),
       drawer: const Drawer(),
       floatingActionButton: FloatingActionButton(
         onPressed: (){
           setState(() {
             print("pressed");
              NewColor = Colors.blue;
              Newicon = Icons.ac_unit;
           });
           },
         child: Icon(Newicon, size :40 , ),
         backgroundColor: NewColor,
         elevation: 5,
       ),
       body: Container(
           padding: const EdgeInsets.all(20),
           width: double.infinity,
           child: ListView(
             scrollDirection: Axis.vertical,
             children: [
               Container(                // first container
                   width: double.infinity,
                   margin: EdgeInsets.symmetric(vertical: 30),
                   padding: const EdgeInsets.all(10),
                   alignment: Alignment.center,
                   decoration: BoxDecoration(
                     color: NewColor,
                     border: Border.all(color: Colors.black , width: 3  ),
                   ),
                   child: InkWell( onTap: () { print("object"); },
                     child: const Text("Tic-Tac-Toe Game"  ,
                         style: TextStyle(fontSize: 25 ,
                           color: Colors.white ,
                           fontWeight: FontWeight.bold ,
                         )
                     ),
                   )
               ),
               Container(         // second container
                   width: double.infinity,
                   margin: EdgeInsets.symmetric(vertical: 30),
                   alignment: Alignment.center,
                   child:  const Text("Tic-TacToe Game is a game Who make three of same shape is winner in column or row or diagonal"  ,
                       textAlign: TextAlign.center,
                       style: TextStyle(fontSize: 20 ,
                           color: Color.fromRGBO(0, 0, 0, 1.0) ,
                           fontWeight: FontWeight.bold ,
                           wordSpacing: 0.01,
                           height: 1.1
                       )
                   )
               ),
               Container(                   // third container
                   width: double.infinity,
                   margin: EdgeInsets.symmetric(vertical: 30),
                   padding: const EdgeInsets.all(10),
                   alignment: Alignment.center,
                   decoration: BoxDecoration(
                     color: Colors.transparent,
                     border: Border.all(color: Colors.black , width: 1 ),
                   ),
                   child: Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Row(
                             children: const [
                               Icon(Icons.star , color: Colors.amber),
                               Icon(Icons.star , color: Colors.amber),
                               Icon(Icons.star , color: Colors.amber),
                               Icon(Icons.star),
                               Icon(Icons.star),
                             ],
                           ),
                           const Text("17 Review"  , textAlign: TextAlign.right,
                               style: TextStyle(fontSize: 20 ,
                                 color: Color.fromRGBO(0, 0, 0, 1.0) ,
                                 fontWeight: FontWeight.bold ,
                               )
                           )
                         ],
                       ),
                       Container(
                         margin: const EdgeInsets.symmetric(vertical: 20),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Column(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 InkWell(
                                   onTap: (){print("Feed");},
                                   child: const Icon(
                                       Icons.restaurant , color: Colors.green , size: 50
                                   ),
                                 ),
                                 Container(
                                     padding: EdgeInsets.all(10),
                                     child: Text( "Feed")
                                 ),
                                 Text("2 - 4")
                               ],
                             ),Column(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 const Icon(
                                     Icons.category , color: Colors.green , size: 50
                                 ),
                                 Container(
                                     padding: EdgeInsets.all(10),
                                     child: Text( "Feed")
                                 ),
                                 Text("2 - 4")
                               ],
                             ),Column(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 const Icon(
                                     Icons.emoji_food_beverage , color: Colors.green , size: 50
                                 ),
                                 Container(
                                     padding: EdgeInsets.all(10),
                                     child: Text( "Feed")
                                 ),
                                 Text("2 - 4")
                               ],
                             )
                           ],
                         ),
                       )
                     ],
                   )
               )
             ],
           )
       )
   );
  }

}