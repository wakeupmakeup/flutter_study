import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

// 최종 코드
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // 색상 정보를 쓸때 Colors.색상.색조
        //커스텀 컬러
        backgroundColor: Color(0xFF181818),

        // Colum은 하나의 child만 가지지 않음 대신 children이라는 List가 존재함.
        // 여기서 row는 한 섹션을 말함. 강의를 보면 한 Row에 하나의 텍스트와 또 하나의 텍스트가 있음.
        // 다른걸 올리기 위해선 Column을 사용해야한다.
        // 즉, Row하나를 만들고 텍스트가 들어있는 2개의 Colume을 만든다.
        body: Padding(
          // padding에서 required하고 있는데 타입을 보면 EdgeInsetsGeometry타입을 요구하고 있다.
          // 이럴때는 아래와 같이 입력한다.

          // all이라는 것은 상하좌우를 뜻한다.
          // 상하좌우 하나만 하고 싶을때는 only를 쓴다.
          // padding: EdgeInsets.all(10),

          // 이것은 가로 세로를 뜻한다.
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              // 보면 알겠지만 Row도 children List가 있어야 한다.
              // Row나 Colume 모두 children List가 있어야 한다고 생각하자.
              // 마지막에 콤마를 꼭 기억해라
              Row(
                // 수평방향
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    // 수평방향 (오른쪽 정렬))
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hey Selena',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 22,
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
