import 'package:adv_basics/start_page.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 92, 51, 189),
              Color.fromARGB(255, 45, 7, 98),
            ],
          )),
          child: const StartPage(),
        ),
      ),
    );
  }
}
