//Import of packages
import 'package:flutter/material.dart';
//Import of own files
import './question.dart';

class Question extends StatelessWidget {
  final String
      questionText; //Hacer final esta variable por que al final es un StatelessWidget

  Question(this.questionText); //Constructor sencillo

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity, //width: es un named argument, se hace tan grande como el padre
        margin: EdgeInsets.all(10), //Cambia el valor de margin horizontal y vertical 
        child: Text(
          questionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center, //ENUM, Predifined values
        ));
  }
}
