import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  // class 를 widget으로 바꿔주기 위한 extend
  final Color textColor;
  final String text;
  final Color bgColor;

  const Button(
      {super.key,
      required this.textColor,
      required this.text,
      required this.bgColor});

  @override
  Widget build(BuildContext context) {
    // 모든 widget엔 bulid 가 존재해야함

    return Container(
      // Container 는 div 와 비슷함 style을 줄땐 decoration으로 줌
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45),
        color: bgColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 50,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
