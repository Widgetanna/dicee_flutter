import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
   var leftNumber =1;
   var rightNumber=1;
  @override
  Widget build(BuildContext context) {
   return Center(
    child: Row(
      children:<Widget>[
        Expanded(
          child: TextButton(
             onPressed: () {
             setState( (){
                leftNumber = Random().nextInt(6)+1;
                rightNumber = Random().nextInt(6)+1;
              print('klik $leftNumber');
            });
            },
             
             child: Image.asset('images/dice$rightNumber.png'),
             
           ),
          ),
          Expanded(
          child: TextButton(
            onPressed: () {
              setState( (){
               rightNumber = Random().nextInt(6)+1;
                leftNumber = Random().nextInt(6)+1;
              print('klikniety');
              });
            },
          child: Image.asset('images/dice$rightNumber.png'),
          
            ),
          ),
        ],
      ),
    ); 
  }
}
