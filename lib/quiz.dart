import 'package:flutter/material.dart';

import 'package:quiz_app/first_screen.dart';
import 'package:quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];

  var activeScreen = 'first-screen';

  // @override
  // void initState() {
  //   activeScreen = FirstScreen(switchedScreen);
  //   super.initState();
  // }

  void switchedScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
  }

  @override
  Widget build(context) {
    // var screenWidget = activeScreen == 'first-screen'
    //     ? FirstScreen(switchedScreen)
    //     : const QuestionScreen();
    Widget screenWidget = FirstScreen(switchedScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        onSelectedAnswer: chooseAnswer,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 82, 0, 107),
              Color.fromARGB(166, 204, 59, 248),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
