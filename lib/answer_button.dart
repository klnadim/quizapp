import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {required this.buttonName, required this.onTap, super.key});

  final String buttonName;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        onPrimary: Colors.white,
        primary: const Color.fromARGB(255, 93, 1, 98),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      onPressed: onTap,
      child: Text(
        buttonName,
        textAlign: TextAlign.center,
      ),
    );
  }
}
