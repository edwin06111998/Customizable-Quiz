import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int resultScore;
  final VoidCallback selectHandler;

  Resultado(this.resultScore, this.selectHandler);

  String get resultadoFrase {
    String resultadoTexto;
    if (resultScore <= 30) {
      resultadoTexto = '¡No lo has conseguido!';
    } else {
      resultadoTexto = '¡Felicidades campeón!';
    }
    return resultadoTexto;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            resultadoFrase,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          Text(
            'Tu puntaje ha sido: ' + resultScore.toString(),
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10), //Espacio entre Widgets
          OutlinedButton(
            onPressed: selectHandler,
            child: Text(
              'Intentar de nuevo',
              style: TextStyle(
                fontSize: 18,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
