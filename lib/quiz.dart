import 'package:flutter/material.dart';
import 'package:compatibilty_test/StartScreen.dart';

class  quiz extends StatefulWidget {
  const quiz({super.key});

  @override
  State<quiz> createState() => _quizState();
}

class _quizState extends State<quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
      backgroundColor:  const Color.fromARGB(255, 74, 3, 87),
      body:  StartScreen()
      ),
      );
  }
}

