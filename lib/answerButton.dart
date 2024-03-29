import 'package:flutter/material.dart';

class answerButton extends StatelessWidget {
  const answerButton(this.ontap, this.text, {super.key});

  final String text;
  final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
        textAlign: TextAlign.center,
      ),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        backgroundColor: const Color.fromARGB(255, 3, 3, 82),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
    );
  }
}
