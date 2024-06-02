import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int seconds = 45 * 60;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFE7626C),
        ),
        width: screenWidth,
        height: screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight / 844 * 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: screenWidth / 390 * 20,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.menu_rounded,
                        color: Color(0xFFF4EDDB),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.refresh_sharp,
                        color: Color(0xFFF4EDDB),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 390 * 20,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: screenHeight / 844 * 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '45', // 위에 변수 만들어 놨으니까 연산자 써서 자동화 ㄱㄱ
                  style: TextStyle(
                    fontSize: 90,
                    color: Color(0xFFF4EDDB),
                  ),
                ),
                SizedBox(width: screenWidth / 390 * 5),
                const Text(
                  ':',
                  style: TextStyle(
                    fontSize: 90,
                    color: Color(0xFFF4EDDB),
                  ),
                ),
                SizedBox(width: screenWidth / 390 * 5),
                const Text(
                  //여기도
                  '00',
                  style: TextStyle(
                    fontSize: 90,
                    color: Color(0xFFF4EDDB),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight / 844 * 100),
            const Icon(
              //여기 삼항연산자 써서 저번에 했던거 처럼 아이콘 바꾸기, Icons.pause_circle_outline <- 이거 쓰면 됨
              Icons.play_circle_outline,
              color: Color(0xFFF4EDDB),
              size: 100,
            ),
            SizedBox(height: screenHeight / 844 * 200),
            Container(
              height: screenHeight / 844 * 182.26,
              width: screenWidth,
              decoration: const BoxDecoration(
                color: Color(0xFFF4EDDB),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight / 844 * 40,
                  ),
                  const Text(
                    'Pomodoros',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  SizedBox(height: screenHeight / 844 * 1),
                  const Text(
                    '0', //이거 변수(count)로 바꾸기
                    style: TextStyle(color: Colors.black, fontSize: 60),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
