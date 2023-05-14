import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 플러터 앱 트리 구조를 보면 이해가 될것임.
      title: '첫번째 앱', // MaterialApp은 title이라는 것을 가지고 있다.
      theme: ThemeData(
          primarySwatch: Colors
              .blue // 특정색의 음영등을 정해서 사용하겠다. 즉, 한가지가 아니라 한 색상의 여러가지 종류를 사용한다.
          ), // 기본적인 디자인 테마 정해주는 기능.
      home: MyHomePage(), //앱이 정상적으로 실행됐을때 가장 먼저 보이는 곳
    );
  }
}

// 자동적으로 주석같은게 생성되는 이유 -> 플러터는 위젯의 집합이기 때문에 각각 어느 부분이 어떤 위젯인지 구별하는게 중요하다 따라서 편리하게 자동으로 생성되는 것이다. 
