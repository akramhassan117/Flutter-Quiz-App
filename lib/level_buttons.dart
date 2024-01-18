import 'package:flutter/material.dart';

class LevelButton extends StatelessWidget {
  const LevelButton(this.level, this.startquiz3, {Key? key}) : super(key: key);

  final String level;
  final void Function() startquiz3;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120, // Adjust the width as needed
      margin: const EdgeInsets.all(8), // Add some spacing between buttons
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(148, 75, 14, 154),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
          textStyle: const TextStyle(fontSize: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        onPressed: startquiz3,
        child: Center(
          child: Text(
            level,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
