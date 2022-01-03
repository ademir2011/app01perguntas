import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  const Resultado(this.pontuacao, this.quandoReiniciarQuestionario, {Key? key}) : super(key: key);

  String get fraseResultado {
    if (pontuacao < 30) {
      return 'Parabéns!!!';
    } else if (pontuacao < 59) {
      return 'Você é bom !!';
    } else if (pontuacao < 100) {
      return 'Impressionante!';
    } else {
      return 'Você é um jedi !';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          onPressed: quandoReiniciarQuestionario,
          child: const Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 18),
          ),
          style: TextButton.styleFrom(primary: Colors.blue),
        ),
      ],
    );
  }
}
