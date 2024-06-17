import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';

class QuestionsScren extends StatefulWidget {
  const QuestionsScren({super.key});

  @override
  State<QuestionsScren> createState() => _QuestionsScrenState();
}

class _QuestionsScrenState extends State<QuestionsScren> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(onTap: () {}, answerText: currentQuestion.answers[0]),
          AnswerButton(onTap: () {}, answerText: currentQuestion.answers[1]),
          AnswerButton(onTap: () {}, answerText: currentQuestion.answers[2]),
          AnswerButton(onTap: () {}, answerText: currentQuestion.answers[3]),
        ],
      ),
    );
  }
}
