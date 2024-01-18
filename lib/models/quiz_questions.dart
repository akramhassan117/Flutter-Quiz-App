// Define a class called QuizQuestions to represent quiz questions and their answers.
class QuizQuestions {
  // Constructor for the class. It takes a 'text' (the question text) and a list of 'answers'.
  const QuizQuestions(this.text, this.answers);

  // Declare two instance variables: 'text' to store the question text and 'answers' to store the list of answers.
  final String text;
  final List<String> answers;

  // Define a method called 'getshuffledanswers' to shuffle the list of answers.
  List<String> getshuffledanswers() {
    // Create a copy of the 'answers' list called 'shuffledanswers' using List.of().
    final shuffledanswers = List.of(answers);

    // Shuffle the 'shuffledanswers' list randomly.
    shuffledanswers.shuffle();

    // Return the shuffled list of answers.
    return shuffledanswers;
  }
}
