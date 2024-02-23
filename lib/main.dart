import 'package:flutter/material.dart';

/* flutter는 모든 것이 다 class라고 봐도 된다. 
그래서 객체 지향에 편해져야한다. 

지금 하고 있는 것 처럼 위젯을 사용할 때마다. 클래스를 인스턴스화 한다. 
그렇기 때문에 항상 new를 써줄 필요가 없다. 

생성자라는 것을 봐보자. (dart를 안다고 가정하에 진행)

먼저 Player라는 class를 만든다.
메인 함수 위에 클래스를 만들고 메인 함수 안에는 만든 클래스를 이용하게끔 만든다. 
이때 Player 클래스를 만들때 이름을 보내주게 만들었다.

먼저 이 클래스에서 name에 대해 기본값을 주지 않을 것이다. 그러면 어떻게 할까?
this를 사용하면 된다. 

// class Player {
//   //String name = 'tk';

//   String name;
//   Player(this.name);
// }

this.name이 의미하는 것은 main함수에 있는 Player()안에 이름을 써주면 this.name안에 적었던 이름을 넣어준다. 
 
 이 방식은 Text 에서 볼 수 있는 구조임. 그러니까 밑에서 완성 코드에 보이는 Text('어쩌고')이런 것과 똑같은 구조다. 
 
 또 다른 방식은 named parameter라는 방식이다. 
 이 방식은 아래 최종 코드에서 보여지는 appBar, home, body 같은 것을 말한다. 
 이 방식은 아래에서 클래스를 만들어 this를 사용하는 방식과는 다르게 사용한다. 
 이 방식을 사용하는 이유는 class의 파라미터가 많을때는 이 방식을 사용한다. 
 파라미터의 순서를 잊어버리기 쉬워서 이렇게 한다.
 
 사용 방법은 이렇게 한다. 

// class Player {
//   String name;

//   Player({required this.name});
// }

// void main() {
//   var tk = Player(name:'안녕하세요');
//   tk.name; //안녕하세요
//   runApp(App());
// }

override되어 있는 클래스에 있는 것을 이렇게 해서 가져다가 쓰는 것임.

*/

class Player {
  String name;
  Player({required this.name});
}

void main() {
  var tk = Player(name: "안녕하세요");
  tk.name; //안녕하세요
  runApp(App());
}

// 최종 코드
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello flutter'),
        ),
        body: Center(
          child: Text('hello world!'),
        ),
      ),
    );
  }
}
