import 'package:compatibilty_test/answerButton.dart';
import 'package:flutter/material.dart';
import 'package:compatibilty_test/data/Questions.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  const Questions({super.key,required this.OnselectAnswer ,});

  final void Function(String answer) OnselectAnswer;
  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currentquestion = 0;

  void current_question_no(String selected_answer) {
    widget.OnselectAnswer(selected_answer);
      setState(() {
        currentquestion++;
      });
    }


  @override
  Widget build(BuildContext context) {

    var activebutton = questions[currentquestion];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              activebutton.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...activebutton.GetShuffledList().map((answer) {
              return answerButton( (){
                current_question_no(answer);
              }, answer);
            })
          ],
        ),
      ),
    );
  }
}
