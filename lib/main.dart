import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

// 그냥 클래스만 했다면 아직 위젯은 아니다.
// 위젯으로 하고 싶다면 flutter SDK에 있는 3개의 core widget중에 하나를 상속 받아야한다.
// 여기서 StatelessWidget이라는 것을 상속했는데 이것 상속 받기 위해서는 build라고 불리는 메소드를 구현해야한다.
// 계약이라고 생각하면 된다.

/*class App extends StatelessWidget {

}*/

// build 메소드
// override라는 것은 부모 class에 이미 있는 것을 다시 불러와서 사용한다는 것.
// build 메소드는 return을 만들어 줘야 한다.
// 또 맨 위에 runApp이라는 함수에 App이 있는데 이 말은 App이라는 위젯이 우리 앱의 root가 된다는 말이다.
// 또 다시 말하면 이것은 우리 앱의 시작점이 된다는 의미다.
// return을 주려면 2가지 중 하나를 선택해야 한다.
// 1. material
// 2. cupertino

// 이것 들은 스타일 요소인데 보통은 1번을 선택한다.
// 1은 구글, 2는 애플 느낌인데 커스텀 UI를 만들고 싶을때도 1번을 선택해 변형하는게 더 쉽다.

/*class App extends StatelessWidget {

  @override
  // context라는 것은 일단 무시한다. 
  Widget build(BuildContext context) {
    return MaterialApp();
  }

// flutter에서 화면에 대한 규칙이 하나 또 있다. 
// 그것은 화면이 scaffold라고 하는 걸 가져야 한다. 
// 헬로월드 텍스트를 넣을때 바로 텍스트를 넣지 말고 화면 구조를 먼저 정해주고 거기 안에 넣어야함.

}*/

// 최종 코드
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('hello flutter')),
        body: Center(
          child: Text('hello world!'),
        ),
      ),
    );
  }
}
