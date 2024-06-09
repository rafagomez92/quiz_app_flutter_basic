import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final Function startQuiz;
  const StartScreen({super.key, required this.startQuiz});

  @override
  Widget build(BuildContext context) {
    return  Center(child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/image/quiz-logo.png", width: 300, color: const Color.fromARGB(150, 255, 255, 255)),
        const SizedBox(height: 80,),
        const Text("Learn Flutter the fun way!", style: TextStyle(color: Colors.white, fontSize: 24),),
        const SizedBox(height: 30,),
        OutlinedButton.icon(onPressed: (){ startQuiz();}, style:  OutlinedButton.styleFrom(foregroundColor: Colors.white), icon: const Icon(Icons.arrow_right_alt),label: const Text('Start Quiz'),)

      ],
    ));
  }
}