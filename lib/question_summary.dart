import 'package:flutter/material.dart';
import 'package:compatibilty_test/Result_screen.dart';
import 'package:flutter/widgets.dart';


class question_summary extends StatelessWidget {
  const question_summary(this.questions_summary ,{super.key});
  
  final List<Map<String , Object>> questions_summary ;
  @override
  Widget build(BuildContext context) {
    return
       SizedBox(
        height: 300,
        child: SingleChildScrollView(
          child: Column(
            children: 
              questions_summary.map((data){
                return  Row(
                  children: [
                    Text( ((data['question_no'] as int) + 1).toString() ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(data['question'].toString()),
                          SizedBox(height: 5,),
                          Text( 'Shubham Answer = ${data['correct_answer']}'),
                            SizedBox(height: 5,),
                          Text('your Answer = ${data['user_answer']}'),
                        ],
                      ),
                    )
                    
                  ],
                );
              }
              ).toList(),
           
          ),
        ),
    );
  }
}