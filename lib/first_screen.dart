import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  void quizStart() {
    ////////
  }

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 150, 5, 194),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 350,
              child: Image.asset(
                "assets/images/quiz-logo.png",
                fit: BoxFit.cover,
              ),
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
            OutlinedButton(
              onPressed: quizStart,
              child: const Text(
                "Start Quiz",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
