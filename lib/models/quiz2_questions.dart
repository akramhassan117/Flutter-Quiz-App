// Define a class called QuizQuestions to represent quiz questions and their answers.
class QuizQuestions {
  // Constructor for the class. It takes a 'text' (the question text) and a list of 'answers'.
  const QuizQuestions(this.text2, this.answers2);

  // Declare two instance variables: 'text' to store the question text and 'answers' to store the list of answers.
  final String text2;
  final List<String> answers2;

  // Define a method called 'getshuffledanswers' to shuffle the list of answers.
  List<String> getshuffledanswers2() {
    // Create a copy of the 'answers' list called 'shuffledanswers' using List.of().
    final shuffledanswers2 = List.of(answers2);

    // Shuffle the 'shuffledanswers' list randomly.
    shuffledanswers2.shuffle();

    // Return the shuffled list of answers.
    return shuffledanswers2;
  }
}
