// Import the necessary Flutter package
import 'package:flutter/material.dart';

// Define a custom widget called AnswerButton
class AnswerButton extends StatelessWidget {
  // Constructor to initialize the AnswerButton with an answer text and a callback function onTap
  const AnswerButton(this.answer, this.onTap, {super.key});

  // Declare two final properties: answer (a string) and onTap (a function)
  final String answer;
  final void Function() onTap;

  // Override the build method to define the widget's appearance
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // Define the styling for the ElevatedButton
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(148, 75, 14, 154),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      // Set the callback function for when the button is pressed
      onPressed: onTap,
      // Display the answer text in the button's child
      child: Text(answer, textAlign: TextAlign.center,),
    );
  }
}
