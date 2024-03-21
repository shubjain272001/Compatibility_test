import 'package:compatibilty_test/Models/Questions_define.dart';
import 'package:compatibilty_test/data/Questions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:compatibilty_test/StartScreen.dart';
import 'package:compatibilty_test/Questions_screen.dart';
import 'package:flutter/widgets.dart';
import  'package:compatibilty_test/Result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

   List<String> selected_answers = [];
  var activeScreen = 'start-screen';

  void SwitchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
     
    });
  }

 void chooseAnswer(String answer){
   selected_answers.add(answer);

   if(selected_answers.length==questions.length){
        setState(() {
           activeScreen ='result-screen';
        selected_answers =[];
        });
       
      }
      
 }
  @override
  Widget build(context) {

    Widget ScreenWidget = StartScreen(SwitchScreen);

    if(activeScreen == 'questions-screen'){
      ScreenWidget = Questions(OnselectAnswer: chooseAnswer,);
    }

    if(activeScreen =='result-screen'){
      ScreenWidget =Result_screen(ResultAnswer: selected_answers,);
    }

    return  MaterialApp(
      home: Scaffold(
        backgroundColor:const Color.fromARGB(255, 126, 36, 171),
        body: Container(
          child: ScreenWidget,
        )
      ),
    );
  }
}
