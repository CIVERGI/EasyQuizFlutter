import 'package:flutter/material.dart';
import 'package:flutter_guide/question.dart';
import './answer.dart';

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

class _MyAppState extends State<MyApp> {
  //<- Clase generica "State" / Investigar el puntero de <MyApp>
  //_MyAppState es privada gracia s al _

  final questions = const [
    //Map Collection of key value pares
    {
      "questionText": "Cual es tu color favorito?",
      "answers": ["Negro", "Rojo", "Azul", "Amarillo"],
    },
    {
      "questionText": "Cual es tu animal favorito?",
      "answers": ["Leon", "Tortuga", "Tucan", "Oso Polar"],
    },
    {
      "questionText": "Cual es tu nivel de estudios?",
      "answers": ["Secundaria", "Preparatoria", "Universidad", "Maestria"],
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      //Buscar informacion mas concisa de set State
      //Set state le dice a flutter que re construya (Re-build la UI) el widget desde donde se llamo (MyApp).
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
        ),
        body: _questionIndex < questions.length
            ? Column(
                //Estructura If, lo que este despues del signo de interrogacion corre si es verdadero
                children: <Widget>[
                  Question(
                    questions[_questionIndex]["questionText"],
                  ),
                  ...(questions[_questionIndex]["answers"] as List<String>)
                      .map((answer) {
                    // ... al inicio = SpreadOperator
                    //(Convierte la lista de widgets Answer individuales a listas de widgets(pone 4botones de cajon))
                    //Casteamos / Convertimos con "as" nuestro map (collection) a una Lista de Strings y almacenamos su valor de lista en "answer"
                    return Answer(_answerQuestion,
                        answer); //Passing callback functions around == puntero de funcion
                  }).toList(), //toList() convierte nuestro elemento a una lista
                ],
              )
            : Center(
                //Bloque else
                child: Text("Terminaste el quiz!"),
              ),
      ),
    );
  }
}
