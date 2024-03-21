 import 'package:flutter/material.dart';
 
 
 class Result_screen extends StatelessWidget {
  const Result_screen({super.key, required this.ResultAnswer});

  final List<String> ResultAnswer ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
      margin: EdgeInsets.all(40),
   
      child:  Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
             'You have answered x out y questions correctly ' 
            ),
           const SizedBox(height: 30,),
           const Text(' all answers dispaly ....'),
            const SizedBox(height: 30,),
            TextButton(onPressed: (){}, child: Text('Restart Quiz'))
          ],
        )
      )
    );
  }
}