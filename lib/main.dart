import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/screens/Score/ScoreScreen.dart';
import 'package:quizapp/screens/quiz/QuizScreen.dart';
import 'package:quizapp/screens/welcome/WelcomePage.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Quiz App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: ScoreScreen(),
    );
  }
}
