import 'package:flutter/material.dart';

import 'data/hard_questions.dart';

class ResultScreen2 extends StatefulWidget {
  const ResultScreen2(
      {super.key, required this.chosenAnswers, required this.returnscreen});

  final List<String> chosenAnswers; // List of user's chosen answers
  final void Function()
      returnscreen; // Callback function to return to the previous screen

  @override
  State<ResultScreen2> createState() => _ResultScreen2State();
}

class _ResultScreen2State extends State<ResultScreen2> {
  // Function to generate summary data for the quiz results
  List<Map<String, Object>> getsummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < widget.chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions3[i].text3,
        'correct_answer': questions3[i].answers3[0],
        'user_answers': widget.chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final numTotalQuestions = questions3.length; // Total number of questions
    final sumdata = getsummaryData(); // Generate summary data for results

    final numCorrectQuestions = sumdata.where((data) {
      return data['user_answers'] == data['correct_answer'];
    }).length; // Count the number of correct answers

    final double percentageCorrect = numCorrectQuestions /
        numTotalQuestions *
        100; // Calculate the percentage of correct answers

    return Center(
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '$numCorrectQuestions out of $numTotalQuestions',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            CircularProgressIndicator(
              // Display a circular progress indicator with the percentage of correct answers
              value: percentageCorrect / 100,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
              backgroundColor: Colors.grey,
              strokeWidth: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '${percentageCorrect.toStringAsFixed(1)}%',
              style: const TextStyle(color: Colors.white, fontSize: 24),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              // Use an expanded widget to fill the remaining space
              child: ListView(
                // Use a list view instead of a column to display the summary of questions and answers
                children: sumdata.map((data) {
                  return Padding(
                    // Add some padding around each item
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        // Display the question index (question number).
                        Text(
                          ((data['question_index'] as int) + 1).toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // Align the text to the start
                            children: [
                              // Display the question text.
                              Text(
                                data['question'] as String,
                                style: const TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                // Use a row to display the user's chosen answer and an icon
                                children: [
                                  Icon(
                                    // Display a check icon if the answer is correct, or a close icon if the answer is wrong
                                    data['user_answers'] ==
                                            data['correct_answer']
                                        ? Icons.check
                                        : Icons.close,
                                    color: data['user_answers'] ==
                                            data['correct_answer']
                                        ? Colors.green
                                        : Colors
                                            .red, // Use green or red color for the icon
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  // Display the user's chosen answer.
                                  Text(
                                    data['user_answers'] as String,
                                    style: TextStyle(
                                        color: data['user_answers'] ==
                                                data['correct_answer']
                                            ? Colors.green
                                            : Colors.red),
                                  ), // Use green or red color for the text
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              // Display the correct answer.
                              Text(
                                'Correct answer: ${data['correct_answer'] as String}',
                                style: const TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: widget.returnscreen, // Button to restart the quiz
                child: const Text(
                  'Restart Quiz',
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
