// Define a class called QuizQuestions to represent quiz questions and their answers.
class QuizQuestions {
  // Constructor for the class. It takes a 'text' (the question text) and a list of 'answers'.
  const QuizQuestions(this.text3, this.answers3);

  // Declare two instance variables: 'text' to store the question text and 'answers' to store the list of answers.
  final String text3;
  final List<String> answers3;

  // Define a method called 'getshuffledanswers' to shuffle the list of answers.
  List<String> getshuffledanswers3() {
    // Create a copy of the 'answers' list called 'shuffledanswers' using List.of().
    final shuffledanswers3 = List.of(answers3);

    // Shuffle the 'shuffledanswers' list randomly.
    shuffledanswers3.shuffle();

    // Return the shuffled list of answers.
    return shuffledanswers3;
  }
}
