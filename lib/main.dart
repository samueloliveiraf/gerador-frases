import 'package:flutter/material.dart';
import 'dart:math';

void main() {

  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));

}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    'Temam menos a morte e mais a vida insuficiente.',
    'Um homem tem sempre medo de uma mulher que o ame muito.',
    'O amor é a arte de criar algo com a ajuda da capacidade do outro.',
    'Para a maioria, quão pequena é a porção de prazer que basta para fazer a vida agradável!',
    'O homem é definido como um ser que evolui, como o animal é imaturo por excelência.',
    'A paciência é uma virtude, exceto quando se trata de separar os inconvenientes.',
    'Estar no poder é como ser uma dama. Se tiver que lembrar às pessoas que você é, você não é.',
    'Podes ter de travar uma batalha mais de uma vez, para a vencer.',
  ];

  var _fraseGerada = 'Clique abaixo para gerar uma frase!';

  void _gerarFrase() {
    var numeroSortedo = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSortedo];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Frases do dia',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('imagens/logo.png'),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color: Colors.black
              ),
            ),
            RaisedButton(
              child: Text(
                'Nova frases',
                 style: TextStyle(
                   fontSize: 17,
                   color: Colors.white,
                   fontWeight: FontWeight.bold
                 ),
              ),
              color: Colors.green,
              onPressed: _gerarFrase,
            )
          ],
        ),
      ),
    );
  }
}
