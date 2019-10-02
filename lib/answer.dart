import 'package:flutter/material.dart';
import './main.dart';

class Answer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue, //Static property without instantiate classes 
        //Es similar a ENUM pero en vez de numeros indicando los estados tenemos texto enendible por humano.

        child: Text("Answer 1"),
        onPressed: ,
      ),
    );
  }
}