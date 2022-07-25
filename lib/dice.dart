import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';

class Dice extends StatefulWidget {
  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  // 페이지 이동, 스낵바 구현, textEditingController 사용법은 아주 중요!

  int leftDice = 1;
  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('dice game!')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image(
                  //   image: AssetImage('image/dice1.png'),
                  //   width: 300.0,
                  // )
                  Expanded(
                      child: Image.asset('image/dice$leftDice.png')
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                      child: Image.asset('image/dice$rightDice.png')
                  )
                ],
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            ButtonTheme(
              minWidth: 100.0,
              height: 60.0,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      leftDice = Random().nextInt(6) + 1;
                      rightDice = Random().nextInt(6) + 1;
                    });
                    
                    showToast("left dice: {$leftDice} & right dice: {$rightDice}");
                  },
                  child: Icon(Icons.play_arrow,
                    color: Colors.white,
                    size: 50.0,
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}

void showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
    backgroundColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM
  );
}