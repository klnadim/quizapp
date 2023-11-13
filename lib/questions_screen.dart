import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/datas/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectedAnswer});

  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void questionChanges(String answer) {
    widget.onSelectedAnswer(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(contex) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              textAlign: TextAlign.center,
              currentQuestion.text,
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswer().map((answer) {
              return AnswerButton(
                  buttonName: answer,
                  onTap: () {
                    questionChanges(answer);
                  });
            }),
            const SizedBox(
              height: 30,
            ),
            // AnswerButton(buttonName: currentQuestion.answers[0], onTap: () {}),
            // AnswerButton(buttonName: currentQuestion.answers[1], onTap: () {}),
            // AnswerButton(buttonName: currentQuestion.answers[2], onTap: () {}),
            // AnswerButton(buttonName: currentQuestion.answers[3], onTap: () {}),
          ],
        ),
      ),
    );
  }
}
