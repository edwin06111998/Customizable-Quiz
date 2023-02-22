import 'package:flutter/material.dart';
import './pregunta.dart';
import './respuesta.dart';


class Quiz extends StatelessWidget {
  final List<Map<String, Object>> preguntas;
  final int preguntaIndice;
  final Function answerQuestion;

  Quiz({
    required this.preguntas,
    required this.answerQuestion,
    required this.preguntaIndice
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Pregunta(preguntas[preguntaIndice]['pregunta']),
        SizedBox(height: 10), //Espacio entre Widgets
        ...(preguntas[preguntaIndice]['respuesta'] as List<Map<String, Object>>)
            .map((resp) {
          return Respuesta(() => answerQuestion(resp['score']), resp['text'] as String);
        }).toList()
      ],
    );
  }
}
