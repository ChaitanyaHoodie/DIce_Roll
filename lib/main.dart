import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text('Dice Roller',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),)
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftdicenumber=1;
  int rightdicenumber=1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(child: FlatButton(onPressed: (){
              setState(() {
                leftdicenumber = Random().nextInt(6)+1;

                print('changed $leftdicenumber');
                });
            },
              child:Image.asset('images/dice$leftdicenumber.png'),
            )
            ),
            SizedBox(width: 10.0),
            Expanded(child: FlatButton(onPressed: (){
              setState((){
                rightdicenumber=Random().nextInt(6)+1;

                print('number changed to $rightdicenumber');
              });
            },
                child: Image.asset('images/dice$rightdicenumber.png'))
            ),
          ],
        ),
      ),
    );
  }
}

