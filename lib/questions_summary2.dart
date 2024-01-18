import 'package:flutter/material.dart';

// Define a Flutter widget class called QuestionsSummary, which is a StatelessWidget.
class QuestionsSummary2 extends StatelessWidget {
  // Constructor for QuestionsSummary. It takes a named parameter 'summarydata', which is a required List of Map<String, Object>.
  const QuestionsSummary2({Key? key, required this.summarydata2}) : super(key: key);

  // Declare an instance variable 'summarydata' to store the summary data of quiz questions.
  final List<Map<String, Object>> summarydata2;

  // Override the build method to create the widget's UI.
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summarydata2.map((data) {
            return Row(
              children: [
                // Display the question index (question number).
                // Text(
                //   ((data['question_index2'] as int) + 1).toString(),
                //   style: const TextStyle(color: Colors.white),
                // ),
                Expanded(
                  child: Column(
                    children: [
                      // Display the question text.
                      Text(data['question2'] as String, style: const TextStyle(color: Colors.white),),
                      const SizedBox(height: 5,),
                      // Display the user's chosen answer.
                      Text(data['user_answers2'] as String, style: const TextStyle(color: Colors.white),),
                      const SizedBox(height: 5,),
                      // Display the correct answer.
                      Text(data['correct_answer2'] as String, style: const TextStyle(color: Colors.white),),
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
