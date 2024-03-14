import 'dart:math';

import 'package:flutter/material.dart';

class BasicContainer extends StatelessWidget {
  BasicContainer({super.key});
// hi i am shubham
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', height: 300, width: 400),
          const Padding(padding: EdgeInsets.only(top: 80)),
          const Text('Lets check our Compatibility',
              style: TextStyle(fontSize: 24, color: Colors.white)),
          const Padding(padding: EdgeInsets.only(top: 30)),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 67, 5, 78),
            ),
            child: const Text(
              'Start Quiz',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
