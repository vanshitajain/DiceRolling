import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
        home: Scaffold(
          backgroundColor:Colors.red[500],
          appBar: AppBar(
            title: Center(
              child: Text('Roll The Dice',
               style: TextStyle(
                  fontFamily:'Pacifico',
                  fontSize: 30.0,
                 color: Colors.white,
              ),
              ),
          ),
            backgroundColor: Colors.black,
        ),
          body: Dicepage(),
        ),
    ),
  );
}
class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftdiceNumber =1;
  int rightdiceNumber =1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child:FlatButton (
                onPressed: (){
                  setState(() {
                    leftdiceNumber=Random().nextInt(6)+1;
                    rightdiceNumber=Random().nextInt(6)+1;
                  });
                },
                child:Image.asset('images/dice$leftdiceNumber.png') ,
              )
          ),
          Expanded(
              child:FlatButton(
                onPressed: (){
                  setState(() {
                    leftdiceNumber=Random().nextInt(6)+1;
                    rightdiceNumber=Random().nextInt(6)+1;
                  });
                },
                child:Image.asset('images/dice$rightdiceNumber.png') ,

              )
          )
        ],
      ),
    );
  }
}
