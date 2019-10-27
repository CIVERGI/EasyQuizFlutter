import 'package:flutter/material.dart';
import './main.dart';

class Answer extends StatelessWidget {

  final Function selectHandler; //Almacenamos una funcion
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue, //Static property without instantiate classes 
        //Es similar a ENUM pero en vez de numeros indicando los estados tenemos texto entendible por humano.
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}