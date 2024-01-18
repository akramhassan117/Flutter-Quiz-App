import 'package:flutter/material.dart';
import 'four_answer_button.dart'; // Import a custom widget called 'AnswerButton'
import 'data/hard_questions.dart'; // Import questions data
import 'package:google_fonts/google_fonts.dart'; // Import Google Fonts package

// Define a Flutter widget called 'Questions' which is a StatefulWidget
class Questions2 extends StatefulWidget {
  const Questions2({super.key, required this.choosenAnswers2});
  final void Function(String answers) choosenAnswers2;

  @override
  State<Questions2> createState() {
    return _Questions2State();
  }
}

// Define the state for the 'Questions' widget
class _Questions2State extends State<Questions2> {
  var index2 = 0; // Variable to keep track of the current question index

  // Function to handle when an answer button is pressed
  void answerQuestion(String selectedAnswers2) {
    widget.choosenAnswers2(
        selectedAnswers2); // Call the provided callback function to record the selected answer

    setState(() {
      index2++; // Move to the next question
    });
  }

  @override
  Widget build(context) {
    var currentQuestion = questions3[
        index2]; // Get the current question from the list of questions
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text3, // Display the current question's text
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30), // Add spacing below the question text
            // Generate answer buttons based on the current question's shuffled answers
            ...currentQuestion.getshuffledanswers3().map(
              (answers) {
                return AnswerButton(answers, () {
                  answerQuestion(
                      answers); // Call the answerQuestion function when an answer button is pressed
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
