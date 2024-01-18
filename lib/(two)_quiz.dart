// Import necessary packages and files
import 'package:flutter/material.dart';
import 'package:second_app/data/hard_questions.dart';

import 'package:second_app/data/int_questions.dart';

import 'package:second_app/result_screen3.dart';
import 'three_questions_screen.dart';
import 'result_screen.dart';
import 'level.dart';
import 'intquestions_screen.dart';
import 'hardquestions_screen.dart';
import 'results_screen2.dart';
import 'data/questions..dart';

// Ignore unused import
import 'image_set.dart';

// Create a Flutter widget named Quiz that extends StatefulWidget
class Quiz extends StatefulWidget {
  const Quiz({super.key});

  // Override createState to create an instance of _QuizState
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

// Create a private state class _QuizState that extends State<Quiz>
class _QuizState extends State<Quiz> {
  // Define variables
  Widget? activeScreen;
  List<String> selectedAnswers = [];

  @override
  void initState() {
    // Initialize activeScreen with the switchScreen function
    activeScreen = Set(switchScreen);
    super.initState();
  }

  // Function to handle the selection of answers
  void chooseAnswers(String answers) {
    selectedAnswers.add(answers);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        // When all questions are answered, switch to the ResultScreen
        activeScreen = ResultScreen(
          chosenAnswers: selectedAnswers,
          returnscreen: switchScreen2,
        );
      });
    }
  }

  void chooseAnswers2(String answers2) {
    selectedAnswers.add(answers2);

    if (selectedAnswers.length == questions2.length) {
      setState(() {
        // When all questions are answered, switch to the ResultScreen
        activeScreen = ResultScreen2(
          chosenAnswers: selectedAnswers,
          returnscreen: switchScreen2,
        );
      });
    }
  }

  void chooseAnswers3(String answers3) {
    selectedAnswers.add(answers3);

    if (selectedAnswers.length == questions3.length) {
      setState(() {
        // When all questions are answered, switch to the ResultScreen
        activeScreen = ResultScreen3(
          chosenAnswers: selectedAnswers,
          returnscreen: switchScreen2,
        );
      });
    }
  }

  // Function to switch to the Questions screen
  void switchScreen() {
    setState(() {
      activeScreen = ChooseLevel(
        startquiz: switchScreen3,
        startquiz2: switchScreen4,
        startquiz3: switchScreen5,
      );
    });
  }

  // Function to switch back to the Quiz screen
  void switchScreen2() {
    setState(() {
      activeScreen = const Quiz();
    });
  }

  void switchScreen3() {
    setState(() {
      activeScreen = Questions(choosenAnswers: chooseAnswers);
    });
  }

  void switchScreen4() {
    setState(() {
      activeScreen = Questions2(choosenAnswers2: chooseAnswers2);
    });
  }

  void switchScreen5() {
    setState(() {
      activeScreen = Questions3(choosenAnswers: chooseAnswers3);
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          // Apply a gradient background to the container
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.black],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen, // Display the active screen
        ),
      ),
    );
  }
}
