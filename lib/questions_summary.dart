import 'package:flutter/material.dart';

// Define a Flutter widget class called QuestionsSummary, which is a StatelessWidget.
class QuestionsSummary extends StatelessWidget {
  // Constructor for QuestionsSummary. It takes a named parameter 'summarydata', which is a required List of Map<String, Object>.
  const QuestionsSummary({Key? key, required this.summarydata}) : super(key: key);

  // Declare an instance variable 'summarydata' to store the summary data of quiz questions.
  final List<Map<String, Object>> summarydata;

  // Override the build method to create the widget's UI.
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summarydata.map((data) {
            return Row(
              children: [
                // Display the question index (question number).
                // Text(
                //   ((data['question_index'] as int) + 1).toString(),
                //   style: const TextStyle(color: Colors.white),
                // ),
                Expanded(
                  child: Column(
                    children: [
                      // Display the question text.
                      Text(data['question'] as String, style: const TextStyle(color: Colors.white),),
                      const SizedBox(height: 5,),
                      // Display the user's chosen answer.
                      Text(data['user_answers'] as String, style: const TextStyle(color: Colors.white),),
                      const SizedBox(height: 5,),
                      // Display the correct answer.
                      Text(data['correct_answer'] as String, style: const TextStyle(color: Colors.white),),
                      const SizedBox(height: 5,),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
