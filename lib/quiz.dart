import 'package:flutter/material.dart';
import 'package:compatibilty_test/StartScreen.dart';
import 'package:compatibilty_test/Questions.dart';
import 'package:flutter/widgets.dart';

class  Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
    Widget? activeScreen ;

void initState() {
activeScreen =StartScreen(SwitchScreen);
  super.initState();
  
}


  void SwitchScreen(){
    setState(() {
      activeScreen =const Questions();
    });
    
  }
  
  
  @override

  Widget build( context) {
    return MaterialApp(
     home: Scaffold(
      backgroundColor:  const Color.fromARGB(255, 74, 3, 87),
      body:  activeScreen
      ),
      );
  }
}

