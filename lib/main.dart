import 'package:flutter/material.dart';
import 'package:flutter_guide/question.dart';

void main() {
  var myApp = MyApp();
  runApp(myApp);
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{ //<- Clase generica "State" / Investigar el puntero de <MyApp>
  //_MyAppState es privada gracias al _
  var _questionIndex = 0;
  
  void _answerQuestion(){
    setState( () { //Buscar informacion mas concisa de set State
    //Set state le dice a flutter que re construya (Re-build la UI) el widget desde donde se llamo (MyApp).
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }
  
  @override
  Widget build(BuildContext context) {

    var questions = [
      "Cual es tu color favorito?", 
      "Cual es tu animal favorito?",];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex],
              ),
            RaisedButton(
              child: Text("Respuesta 1"),
              onPressed: (){ 
                // Esto es una funcion anonima
                // ...
                print("Answer Chosen");

              }, //<- Pointer
            ),
            RaisedButton(
              child: Text("Respuesta 2"),
              onPressed: _answerQuestion, //<- Pointer en vez de metodo()
            ),
            RaisedButton(
              child: Text("Respuesta 3"),
              onPressed: _answerQuestion, //<- Pointer en vez de metodo()
            ),
          ],
        ),
      ),
    );
  }
}
