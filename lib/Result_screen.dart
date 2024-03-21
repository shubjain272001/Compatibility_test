 import 'package:compatibilty_test/Models/Questions_define.dart';
import 'package:compatibilty_test/Questions_screen.dart';
import 'package:compatibilty_test/data/Questions.dart';
import 'package:flutter/material.dart';
import 'package:compatibilty_test/question_summary.dart';

 class Result_screen extends StatelessWidget {
   Result_screen({super.key, required this.ResultAnswer , });

  final List<String> ResultAnswer ;
 //result ans = choosen answer by user
  final List <Map<String,Object>> summary =[];
 
  
 List<Map<String ,Object>> GetValues(){
   
    for(var i=0; i<ResultAnswer.length;i++){
      summary.add({
        'question_no':i,
        'question':questions[i].text,
        'correct_answer':questions[i].answers[0],
        'user_answer' : ResultAnswer[i],
      });

     /* if(questions[i].answers[0] ==ResultAnswer[i]){
        no_of_correct_questions ++;
      }
      */
    }
    return summary;
   }

  @override
  Widget build(BuildContext context) {
     final Summary_data =GetValues();
      var total_questions =questions.length  ;
      var no_of_correct_questions= Summary_data.where( (data){
        return (data['correct_answers']==data['user_answers']);
      }).length;
      

    return SizedBox(
      width: double.infinity,
      child: Container(
      margin: EdgeInsets.all(40),
          child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                  ' Hi , Our $no_of_correct_questions matched out of $total_questions '
                ),
               const SizedBox(height: 30,),
               question_summary(GetValues()),
                const SizedBox(height: 30,),
                TextButton(onPressed: (){}, child: Text('Restart Quiz'))
              ],
            ),
        ),
      );
      
  }
}