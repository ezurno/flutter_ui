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
        appBar: AppBar(
          title: Center(
            child: Text("Hello flutter!"),
          ),
        ),
        body: Center(
          child: Text("Hello world!"),
        ),
      ),
    ); // build 는 Material (*google) 과 Cupertino (*ios) 중 하나를 반환 해야 함
  }
}

/*
class App 을 Widget으로 만들기 위해서는 flutter SDK 에 있는 3가지 core 중에
하나를 상속 받아야 함 그중 하나가 StatelessWidget
*/