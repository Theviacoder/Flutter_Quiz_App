import 'package:flutter/material.dart';
import 'components/body.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Skip",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
      body: body(),
    );
  }
}
