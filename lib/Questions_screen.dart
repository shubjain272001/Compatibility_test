import 'package:compatibilty_test/answerButton.dart';
import 'package:flutter/material.dart';
import 'package:compatibilty_test/data/Questions.dart';


class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {

    var activebutton = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(activebutton.text,style: TextStyle(color: Colors.white),),
          const SizedBox(
            height: 30,
          ),
          answerButton(() {}, activebutton.answers[0]),
          answerButton(() {}, activebutton.answers[1]),
          answerButton(() {}, activebutton.answers[2]),
          answerButton(() {}, activebutton.answers[3]),
        ],
      ),
    );
  }
}
