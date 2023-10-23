import 'package:flutter/material.dart';
import 'dart:io';
import 'core/game.dart';

void main() {
  runApp(MaterialApp(
      title: 'Jogo da Velha',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  Game game = Game();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jogo da velha"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(game.isWinner()
                ? "${game.getVez} venceu!"
                : 'vez de ${game.getVez}'),
            getGame(),
          ],
        ),
      ),
    );
  }

  getGame() {
    return Column(
        children: game.getDados.asMap().entries.map((linhaEntry) {
      final linhaIndex = linhaEntry.key;
      final linha = linhaEntry.value;
      return Row(
        children: linha.asMap().entries.map((valorEntry) {
          final colunaIndex = valorEntry.key;
          final valor = valorEntry.value;
          return OutlinedButton(
            onPressed: () {
              setState(() {
                game.move(linhaIndex, colunaIndex);
              });
            },
            child: Text(game.getDados[linhaIndex][colunaIndex]),
          );
        }).toList(),
      );
    }).toList());
  }
}
