import 'package:flutter/material.dart';
import 'package:logindice/main.dart';

class Dice extends StatelessWidget {
  // 페이지 이동, 스낵바 구현, textEditingController 사용법은 아주 중요!

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
                      child: Image.asset('image/dice1.png')
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                      child: Image.asset('image/dice2.png')
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
                  onPressed: () {},
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
