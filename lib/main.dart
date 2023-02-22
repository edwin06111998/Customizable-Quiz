import 'package:curso_flutter/resultado.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './resultado.dart';
import './animation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _preguntas = const [
    {
      'pregunta': '¿Cuál es tu color favorito?',
      'respuesta': [
        {'text': 'Negro', 'score': 10},
        {'text': 'Blanco', 'score': 15},
        {'text': 'Rojo', 'score': 20}
      ],
    },
    {
      'pregunta': '¿Cuál es tu equipo favorito?',
      'respuesta': [
        {'text': 'FC Barcelona', 'score': 20},
        {'text': 'Real Madrid', 'score': 5},
        {'text': 'Manchester City', 'score': 15},
        {'text': 'Chelsea FC', 'score': 10}
      ],
    },
    {
      'pregunta': '¿Cuál es tu jugador favorito?',
      'respuesta': [
        {'text': 'Lionel Messi', 'score': 20},
        {'text': 'Cristiano Ronaldo', 'score': 10},
        {'text': 'Kylian Mbappé', 'score': 15}
      ],
    },
  ];
  var _preguntaIndice = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _preguntaIndice = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    if (_preguntaIndice < _preguntas.length) {
      _totalScore += score;
      setState(() {
        _preguntaIndice += 1;
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cuestionario'),
        ),
        body: _preguntaIndice < _preguntas.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                preguntaIndice: _preguntaIndice,
                preguntas: _preguntas,
              )
            : Resultado(_totalScore, _resetQuiz),
      ),
    );
  }
}
