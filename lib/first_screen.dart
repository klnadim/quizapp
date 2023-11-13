import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 150, 5, 194),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/quiz-logo.png",
              width: 300,
              color: const Color.fromARGB(150, 252, 252, 252),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Learn Flutter the fun way!!",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            const SizedBox(
              height: 10,
            ),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(primary: Colors.white),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                "Start Quiz",
                // style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
