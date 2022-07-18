import 'package:flutter/material.dart';
import 'package:logindice/main.dart';

class Dice extends StatelessWidget {
  // 페이지 이동, 스낵바 구현, textEditingController 사용법은 아주 중요!

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice Game!',
      home: LogIn(),
    );
  }
}
