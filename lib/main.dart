import 'package:flutter/material.dart';

void main() {
  var myapp = MyApp();
  runApp(myapp);
}

class MyApp extends StatelessWidget {
  
  void answerQuestion(){
    print("Answer Chosen");
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
        ),
        body: Column(
          children: <Widget>[
            Text("Primer pregunta!"),
            RaisedButton(
              child: Text("Respuesta 1"),
              onPressed: answerQuestion, //<- Pointer
            ),
            RaisedButton(
              child: Text("Respuesta 2"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Respuesta 3"),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
