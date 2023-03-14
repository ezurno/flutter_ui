# 🛠️플러터 프로젝트

## 시작하기 전에...

- **Flutter**는 **Dart**를 사용하므로 [다트 문법 다시보기](https://github.com/ezurno/dart-learn)
- ⚙️INSTALLATION 참고
- flutter doctor 로 파일 생성시 문제가 없는지 issue check
- powershell 에서 flutter create projectName
- projectName 은 [Naming 규칙](https://dart.dev/tools/pub/pubspec#name)을 따라야 함
- Vscode를 바로 실행하면 간혹 AVD가 켜지지 않으므로 powershell 에서 `code .` 를 사용해야 함

<br/>
<hr/>

###### 20230309

## Android Virtual Device 켜기

<img src ="md_resources\resource_1.png"/>
<br/>

- 우측 하단의 장치 탭이 켜지는지 확인
- 켜지지 않았다면 [참고](#시작하기-전에)

<br/>
<img src ="md_resources\resource_2.png" width="100"/>
<br/>

- 우측 상단의 debug 창을 눌러서 작동

<br/>
<img src ="md_resources\resource_4.png" width="400"/>
<br/>

- 디버깅 실행 시 상단의 화면이 나오며 세부사항을 건들 수 있음

<br/>
<img src ="md_resources\resource_3.png" width="400"/>
<br/>

- 완벽히 부팅 됐을 시 모습, counter도 작동한다.

<br/>
<hr/>

###### 20230310

## Widget 이란...?

<br/>

- widget 은 flutter 내에서 UI를 만들기 위한 레고 블럭과 같음
- flutter는 widget이 여러개가 모여 만들어짐

- runApp 은 기본적으로 Widget을 args로 가짐 (App class를 Widget으로 만들어 주어야 함)
- class를 Widget으로 만들어 주기 위해서는 flutter SDK의 3가지 core 중 하나를 사용해 주어야 함 (그 중 하나인 StatelessWidget)

<br/>
<img src ="md_resources\resource_5.png" width="400"/>
<br/>

- Material style 에 바로 text 를 작성한 모습
- widget을 수납하기 위한 Scaffold를 사용해 주어야 함

<br/>
<img src ="md_resources\resource_6.png" width="400"/>
<br/>

- Scaffold를 사용해 text를 나타냄
- 상단 고정바가 없어서 text가 잘려서 나타남

<br/>
<img src ="md_resources\resource_7.png" width="400"/>
<br/>

- AppBar를 넣어서 상단 고정바를 추가해 줌

<br/>
<img src ="md_resources\resource_8.png" width="400"/>
<br/>

- 글씨를 가운데로 쓰는 것도 Widget이며 text를 작성하는 것도 Widget임
- Widget의 사용법을 익히는데 도움이 됨

<br/>
<hr/>

###### 20230311

## Header 만들기

<br/>

- Color를 사용할 때 여러 방식이 있지만 ( 0xFF code ) 를 이용해 **#codeColor**를 사용할 수 있음
- SizeBox 는 칸을 차지하는 특정 Box
- Row 와 Column Widget을 이용해 child Widget의 배열 위치를 바꿀 수 있음
- `css` 처럼 Axis 방향을 정해 배열 할 수 있음

<br/>
<img src ="md_resources\resource_9.png" width="400"/>
<br/>

- Margin Widget 을 이용해 간격을 벌린 모습.
- padding 의 **EdgeInsets** 의 여러 속성이 있으므로 참고 (all, symetric ...)
  - all : 모든 4방면에 padding
  - symetric : vertical, horizontal 중 하나
  - only : 한 방면

<br/>
<hr/>

###### 20230311

## Developer Tool 설정 맛보기

<br/>
<img src ="md_resources\resource_10.png" width="100"/>
<br/>

- 개발자 도구를 열고 싶다면 Debug 상단 바의 우측 버튼을 클릭

<br/>
<img src ="md_resources\resource_11.png" width="400"/>
<br/>

- 부모 자식의 관계나 Text, 상세설정 등을 볼 수 있음

<br/>
<img src ="md_resources\resource_12.png" width="400"/>
<br/>

- 상세설정 중에서 직접 값을 변경 할 수 있음

<br/>
<img src ="md_resources\resource_13.png" width="50"/>
<br/>

- AVD 의 Widget을 직접 눌러서 세팅을 볼 수 있음

<br/>
<img src ="md_resources\resource_14.png" width="400"/>
<br/>

- 격자식으로 AVD의 Widget 을 모아서 볼 수 있음

<br/>
<hr/>

###### 20230313

## Container 로 버튼 만들기

<br/>

- **Container** 는 **div tag**와 비슷함
- style을 줄땐 **decoration** 으로 줌
- Padding Widget 도 있으며 두개를 적절히 조합해 버튼 생성

<br/>
<img src ="md_resources\resource_15.png" width="400"/>

<br/>
<hr/>

###### 20230313

## VSCode Setting 하기

<br/>

- flutter 사용 시 파란 밑줄이 계속해서 생기는 이유는 **const** 때문임
- **const** 는 dart 문법에서 컴파일 전에 알고 있는 값을 setting 함, 그렇기 떄문에 고정적인 수를 **const**로 선언 하라는 알림 표시
- command palette > open user setting (json) > 명령어 추가

<br/>
<img src ="md_resources\resource_16.png" width="400"/>

- flutter 사용시 **children**이 많아지면 보기 불편함 \> setting.json 에 명렁어 추가

<br/>
<img src ="md_resources\resource_17.png" width="400"/>

- children 을 관리하기 편하게 줄이 생긴 모습

```JSON
  "dart.previewFlutterUiGuides": true,
  "editor.codeActionsOnSave": {
    "source.fixAll": true
  }
```

<br/>
<br/>
<img src ="md_resources\resource_19.png" width="200"/>
<br/>
<br/>
<img src ="md_resources\resource_18.png" width="400"/>
<br/>
<br/>

- 해당 extension 을 설치하면 AVG 에서 화면이 잘리는걸 예방 할 수 있음
- code 상에서도 오류가 나는 부분을 빨간표시로 보기 편하게 해줌

<br/>
<hr/>

###### 20230313

## 재사용 가능한 Widget 만들기

<br/>

- 비슷한 여러 버튼을 생성 \>\> **Reusable Widget** 사용
- Dart 에서 쓰는 class 문법으로 생성자를 이용해 생성

<br/>

```DART
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
```

<br/>
<br/>
<img src ="md_resources\resource_20.png" width="400"/>

- **Reusable Widget** 을 사용한 모습
