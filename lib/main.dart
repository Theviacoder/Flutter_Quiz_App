import 'package:flutter/material.dart';
import 'package:quizapp/screens/quiz/QuizScreen.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: QuizPage(),
    );
  }
}
