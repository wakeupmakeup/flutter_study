// 단축기 st로 써도 되는데 지금은 클래스를 직접 만드는 것을 연습하자.

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  const Button({
    // key에 관해서는 나중에 설명.
    // 이렇게 final을 만들었다면 생성자 함수를 만들자.
    // required를 사용해서 선언된 매개변수는 해당 클래스의 인스턴스를 생성할때 반드시 값을 전달해야 하는
    // 매개변수임을 나타냄. 즉, 해당 변수에 null 값이 들어갈 수 없음.

    // 인스턴스 : 객체 지향 프로그래밍에서 클래스를 기반으로 생성된 구체적 개첼르 말함.
    // 클래스는 설계도라고 생각하면 됨, 객체의 속성, 동작을 정의함. 이 클래스를 기반으로 실제로 메모리에 할당된 객체를
    // 인스턴스라고 함.

    // 예를 들어 위 Button 클래스는 버튼을 나타내는 템플릿인데 이것을 사용해서 Button 클래스의 인스턴스를 생성하면, 실제로 사용할 수 있는 버튼 객체가 만들어짐

    // code action 부분
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // 원래 하드 코딩 되어 있던 부분을 이렇게 적용시킨다.
        color: bgColor,
        borderRadius: BorderRadius.circular(
          45,
        ),
      ),

      // 원래 Padding에 const가 있을때 오류가 나는데 이것은 밑에 값들이 상수 였을때 가능했던것.
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 20,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
