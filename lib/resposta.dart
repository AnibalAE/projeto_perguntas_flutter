import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String resposta;
  final void Function() quandoSelecionado;

  Resposta(this.resposta, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
            onPressed: quandoSelecionado,
            child: Text(resposta),
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.blue),
                foregroundColor: WidgetStateProperty.all(Colors.white),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical())))));
  }
}
