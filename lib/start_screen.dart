import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  // 부모에게 전달 받아 실행할 콜백 함수
  final void Function() onSwitchScreen;

  const StartScreen({super.key, required this.onSwitchScreen});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
                'assets/images/quiz-logo.png',
                width: 300,
                color: const Color.fromARGB(160, 255, 255, 255),
              ),
          const SizedBox(height: 80,),
          const Text(
            "Learn Flutter the fun way",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24
            ),
          ),
          const SizedBox(height: 30,),
          OutlinedButton.icon(
            onPressed: () {
              // 전달받은 콜백 함수를 실행
              onSwitchScreen();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white
            ),
            icon: Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz"),
          )
        ],
      ),
    );
  }
}