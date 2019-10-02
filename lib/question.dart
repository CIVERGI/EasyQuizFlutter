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
        width: double.infinity, //width: es un named argument
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center, //ENUM, Predifined values
        ));
  }
}
