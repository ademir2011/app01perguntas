import 'package:app01perguntas/questao.dart';
import 'package:app01perguntas/resposta.dart';
import 'package:flutter/material.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  const Questionario({required this.perguntas, required this.perguntaSelecionada, required this.responder, Key? key})
      : super(key: key);

  bool get temPerguntaselecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas =
        temPerguntaselecionada ? perguntas[perguntaSelecionada].cast()['respostas'] : [];

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas
            .map((resp) => Resposta(resp['texto'].toString(), () => responder(int.parse(resp['pontuacao'].toString()))))
            .toList(),
      ],
    );
  }
}
