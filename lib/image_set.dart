// Import necessary packages
import 'package:flutter/material.dart';
import 'four_answer_button.dart';
// Create a StatelessWidget named Set
class Set extends StatelessWidget {
  // Constructor for Set widget`
  const Set(this.startquiz, {Key? key}) : super(key: key);

  // Define variables
  final activeimage = 'assets/assets/images/quiz-logo.png';
  final void Function() startquiz;

  @override
  Widget build(BuildContext context) {
    // Build a column containing various widgets
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        // Display an image loaded from the specified asset path
        Image.asset(
          activeimage,
          width: double.infinity,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(height: 80), // Add spacing
        // Display a text with specified style
        const Text(
          'Learn Flutter the fun way',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
          ),
        ),
        const SizedBox(height: 30), // Add spacing
        // Create an ElevatedButton with an icon and label
       AnswerButton('Start Quiz', startquiz),
        const SizedBox(
          height: 55, // Add spacing
        )
      ],
    );
  }
}
