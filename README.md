# 🛠️플러터 프로젝트

## 시작하기 전에...

- ⚙️INSTALLATION 참고
- flutter doctor 로 파일 생성시 문제가 없는지 issue check
- powershell 에서 flutter create projectName
- projectName 은 [Naming 규칙](https://dart.dev/tools/pub/pubspec#name)을 따라야 함
- Vscode를 바로 실행하면 간혹 AVD가 켜지지 않으므로 powershell 에서 `code .` 를 사용해야 함

<br/>
<br/>
<hr/>

###### 20230309

## Android Virtual Device 켜기

<img src ="md_resource\resource_1.png"/>
<br/>

- 우측 하단의 장치 탭이 켜지는지 확인
- 켜지지 않았다면 [참고](#시작하기-전에)

<br/>
<img src ="md_resource\resource_2.png" width="100"/>
<br/>

- 우측 상단의 debug 창을 눌러서 작동

<br/>
<img src ="md_resource\resource_4.png" width="400"/>
<br/>

- 디버깅 실행 시 상단의 화면이 나오며 세부사항을 건들 수 있음

<br/>
<img src ="md_resource\resource_3.png" width="400"/>
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
<img src ="md_resource\resource_5.png" width="400"/>
<br/>

- Material style 에 바로 text 를 작성한 모습
- widget을 수납하기 위한 Scaffold를 사용해 주어야 함

<br/>
<img src ="md_resource\resource_6.png" width="400"/>
<br/>

- Scaffold를 사용해 text를 나타냄
- 상단 고정바가 없어서 text가 잘려서 나타남

<br/>
<img src ="md_resource\resource_7.png" width="400"/>
<br/>

- AppBar를 넣어서 상단 고정바를 추가해 줌

<br/>
<img src ="md_resource\resource_8.png" width="400"/>
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
<img src ="md_resource\resource_9.png" width="400"/>
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
<img src ="md_resource\resource_10.png" width="100"/>
<br/>

- 개발자 도구를 열고 싶다면 Debug 상단 바의 우측 버튼을 클릭

<br/>
<img src ="md_resource\resource_11.png" width="400"/>
<br/>

- 부모 자식의 관계나 Text, 상세설정 등을 볼 수 있음

<br/>
<img src ="md_resource\resource_12.png" width="400"/>
<br/>

- 상세설정 중에서 직접 값을 변경 할 수 있음

<br/>
<img src ="md_resource\resource_13.png" width="50"/>
<br/>

- AVD 의 Widget을 직접 눌러서 세팅을 볼 수 있음

<br/>
<img src ="md_resource\resource_14.png" width="400"/>
<br/>

- 격자식으로 AVD의 Widget 을 모아서 볼 수 있음
