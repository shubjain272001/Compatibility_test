import 'package:flutter/material.dart';
import 'package:compatibilty_test/StartScreen.dart';
import 'package:compatibilty_test/Questions_screen.dart';
import 'package:flutter/widgets.dart';

class  Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
    var activeScreen ='start-screen';
   
  void SwitchScreen(){
    setState(() {
      activeScreen = 'questions-screen';
    });
    
  }
  
  
  @override

  Widget build( context) {

    
    return MaterialApp(
     home: Scaffold(
      backgroundColor:  Color.fromARGB(255, 126, 36, 171),
      body:  activeScreen == 'start-screen'?StartScreen(SwitchScreen) : const Questions() ,
      ),
      );
  }
}

