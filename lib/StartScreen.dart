import 'dart:math';

import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  StartScreen( this.startQuiz,{super.key});

 final void Function() startQuiz  ;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png',
           height: 300, width: 400,
           color: const Color.fromARGB(80, 255, 255, 255),),
          const Padding(padding: EdgeInsets.only(top: 80)),
          const Text('Lets check our Compatibility',
              style: TextStyle(fontSize: 24, color: Colors.white)),
          const Padding(padding: EdgeInsets.only(top: 30)),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();

            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Color.fromARGB(255, 255, 255, 255),
            ),
           icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              
              'Start Quiz',
              style: TextStyle(fontSize: 15,),
            ),
          )
        ],
      ),
    );
  }
}