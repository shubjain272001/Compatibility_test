
import 'package:compatibilty_test/quiz.dart';
import 'package:compatibilty_test/Models/Questions_define.dart';
import 'package:compatibilty_test/Questions_screen.dart';
import 'package:compatibilty_test/StartScreen.dart';
import 'package:compatibilty_test/data/Questions.dart';
import 'package:flutter/material.dart';
import 'package:compatibilty_test/question_summary.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

 class Result_screen extends StatelessWidget {
   Result_screen({super.key, required this.ResultAnswer , required this.restart_button });

  final List<String> ResultAnswer ;
 //result ans = choosen answer by user
  final List <Map<String,Object>> summary =[];
  final void  Function() restart_button ;
   
 List<Map<String ,Object>> GetValues(){
   
    for(var i=0; i<ResultAnswer.length;i++){
      summary.add({
        'question_no':i,
        'question':questions[i].text,
        'correct_answer':questions[i].answers[0],
        'user_answer' : ResultAnswer[i],
      });

    }
    return summary;
   }

  @override
  Widget build(BuildContext context) {
   
     final Summary_data =GetValues();
      var total_questions =questions.length  ;
      var no_of_correct_questions= Summary_data.where( (data){
        return (data['correct_answer']==data['user_answer']);
      }).length;
      

    return SizedBox(
      width: double.infinity,
      child: Container(
      margin: EdgeInsets.all(40),
          child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                  ' Hi , Our $no_of_correct_questions choices matched out of $total_questions ',
                  style: GoogleFonts.lato(
                   textStyle: const TextStyle(color: Colors.white, fontSize: 18,)
                  )
                  
                ),
               const SizedBox(height: 30,),
               question_summary(GetValues()),
                const SizedBox(height: 30,),

                TextButton.icon(onPressed: restart_button,
                
                style: TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 4, 46, 82)),


                icon: const Icon(Icons.replay_outlined),
                label: const Text( 'Restart Quiz', style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),)),
                

              ],
            ),
        ),
      );
      
  }
}