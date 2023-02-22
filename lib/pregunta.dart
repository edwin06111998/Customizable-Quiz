import 'package:flutter/cupertino.dart';

class Pregunta extends StatelessWidget {
  var preguntasText;

  Pregunta(this.preguntasText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //toma el mayor ancho posible de la pantalla
      child: Text(
        preguntasText,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        textAlign: TextAlign
            .center, //si no se centra, es porque el Text solo toma un área necesaria para contener el texto
      ),
    );
  }
}
