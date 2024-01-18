import 'package:flutter/material.dart';
import 'level_buttons.dart';

class ChooseLevel extends StatefulWidget {
  const ChooseLevel({required this.startquiz,required this.startquiz2,required this.startquiz3,super.key});
  final void Function() startquiz;
  final void Function() startquiz2;
  final void Function() startquiz3;
 

  @override
  @override
  State<ChooseLevel> createState() {
    return _ChooseLevelState();
  }
}

class _ChooseLevelState extends State<ChooseLevel> {
  void emptquiz(){}
  @override
  Widget build(context) {
    return  Center(
      child: Container(
        margin:const  EdgeInsets.all(40),
        
        child:   Column(
          mainAxisSize: MainAxisSize.max,
          children: [
           const SizedBox(height: 220,),
            LevelButton('Hard',widget.startquiz3),
            const SizedBox(height: 5,),
            LevelButton('Intermediate',widget.startquiz2),
           const SizedBox(height: 5,),
            LevelButton('Easy',widget.startquiz),
          ],
        ),
      ),
    );
  }
}
