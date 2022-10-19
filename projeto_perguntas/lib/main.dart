import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class perguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: responder,
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  perguntaAppState createState() {
    return perguntaAppState();
  }
}

//Outras maneiras de fazer algo em FLUTTER

  /* com essa função logo abaixo eu poderia passar no (onPressed) eu poderia passar (onPressed: funcaoQueRetornaUmaOutraFuncao())
  void Function() funcaoQueRetornaUmaOutraFuncao() {
    return () {
      print('Pergunta respondida #02');
    };
  }
  
  no onPressed ainda pode ser feito de outras formas... 
  #1 onPressed: () {
    print('Resposta 2 foi selecionada');
  }

#2 onPressed: () => print('Resposta 3'),
  */

