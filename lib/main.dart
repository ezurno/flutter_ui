import 'package:flutter/material.dart';

void main() {
  runApp(App());
  // runApp 은 Widget을 args로 갖는다.
  // flutter 의 관점에서 Widget 이란 UI를 만드는 레고블럭 같은 것.
}

class App extends StatelessWidget {
  // Widget 이 된 App은 StatelessWidget의 규칙을 따라야 함 => build를 생성해야 함
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818), // Color를 0xFF로 #color 를 지정할 수 있음
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 20), // symetric은 padding의 위치를 따로 지정 가능
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                // css 의 axis 개념과 유사함
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Hey, Lee",
                        style: TextStyle(
                          // Text Widget 내 style로 지정 가능
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "Welcome back",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
class App 을 Widget으로 만들기 위해서는 flutter SDK 에 있는 3가지 core 중에
하나를 상속 받아야 함 그중 하나가 StatelessWidget
*/
