import 'package:app01perguntas/questionario.dart';
import 'package:app01perguntas/resultado.dart';
import 'package:flutter/material.dart';

main() => runApp(const Perguntas());

class _PerguntasState extends State<Perguntas> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = [
    {
      'texto': 'Qual sua cor favorida?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 1},
        {'texto': 'Vermelho', 'pontuacao': 2},
        {'texto': 'Verde', 'pontuacao': 3},
        {'texto': 'Branco', 'pontuacao': 4},
      ],
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': 63},
        {'texto': 'Cobra', 'pontuacao': 34},
        {'texto': 'Elefante', 'pontuacao': 54},
        {'texto': 'Leão', 'pontuacao': 25},
      ],
    },
    {
      'texto': 'Qual seu instrutor favorito?',
      'respostas': [
        {'texto': 'Maria', 'pontuacao': 45},
        {'texto': 'João', 'pontuacao': 1},
        {'texto': 'Leo', 'pontuacao': 5},
        {'texto': 'Pedro', 'pontuacao': 562},
      ],
    }
  ];

  bool get temPerguntaselecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder(int pontuacao) {
    if (temPerguntaselecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }

    print(_pontuacaoTotal);
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaselecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder,
              )
            : Resultado(_pontuacaoTotal),
      ),
    );
  }
}

class Perguntas extends StatefulWidget {
  const Perguntas({Key? key}) : super(key: key);

  @override
  _PerguntasState createState() => _PerguntasState();
}
