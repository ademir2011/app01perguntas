import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;

  const Resultado(this.pontuacao, {Key? key}) : super(key: key);

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
    return const Center(
      child: Text(
        'Parabéns!',
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
