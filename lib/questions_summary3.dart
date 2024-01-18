import 'package:flutter/material.dart';

// Define a Flutter widget class called QuestionsSummary, which is a StatelessWidget.
class QuestionsSummary3 extends StatelessWidget {
  // Constructor for QuestionsSummary. It takes a named parameter 'summarydata', which is a required List of Map<String, Object>.
  const QuestionsSummary3({Key? key, required this.summarydata3}) : super(key: key);

  // Declare an instance variable 'summarydata' to store the summary data of quiz questions.
  final List<Map<String, Object>> summarydata3;

  // Override the build method to create the widget's UI.
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summarydata3.map((data) {
            return Row(
              children: [
                // Display the question index (question number).
                // Text(
                //   ((data['question_index3'] as int) + 1).toString(),
                //   style: const TextStyle(color: Colors.white),
                // ),
                Expanded(
                  child: Column(
                    children: [
                      // Display the question text.
                      Text(data['question3'] as String, style: const TextStyle(color: Colors.white),),
                      const SizedBox(height: 7,),
                      // Display the user's chosen answer.
                      Text(data['user_answers3'] as String, style: const TextStyle(color: Colors.white),),
                      const SizedBox(height: 7,),
                      // Display the correct answer.
                      Text(data['correct_answer3'] as String, style: const TextStyle(color: Colors.white),),
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
