import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String resposta;
  final void Function() quandoSelecionado;

  const Resposta(this.resposta, this.quandoSelecionado, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: quandoSelecionado,
        child: Text(resposta),
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          textStyle: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
