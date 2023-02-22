import 'package:flutter/material.dart';

class Respuesta extends StatelessWidget {
  final VoidCallback selectHandler;
  final String respuestaTexto;

  Respuesta(this.selectHandler, this.respuestaTexto);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 50, right: 50),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        onPressed: selectHandler,
        child: Text(respuestaTexto),
      ),
    );
  }
}
