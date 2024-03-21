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
        height: 250,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
             
              questions_summary.map((data){
                return  Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text( ((data['question_no'] as int) + 1).toString() ,style: TextStyle(color :Colors.white),  ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(data['question'].toString(),style: const TextStyle(color:Colors.white ,fontSize: 16, fontWeight: FontWeight.w400),),
                          const SizedBox(height: 2,),
                          Text( 'Shubham Answer = ${data['correct_answer']}',style: TextStyle(color: Color.fromARGB(255, 232, 232, 9)),),
                          const SizedBox(height: 2,),
                          Text('your Answer = ${data['user_answer']}' ,style: const TextStyle(color:Color.fromARGB(255, 241, 7, 175))),
                           const SizedBox(height: 5,),
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