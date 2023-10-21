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
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(game.isWinner()
              ? "${game.getVez} venceu!"
              : 'vez de ${game.getVez}'),
          Row(children: [
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    game.move(0, 0);
                  });
                },
                child: Text(game.getDados[0][0])),
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    game.move(0, 1);
                  });
                },
                child: Text(game.getDados[0][1])),
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    game.move(0, 2);
                  });
                },
                child: Text(game.getDados[0][2])),
          ]),
          Row(children: [
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    game.move(1, 0);
                  });
                },
                child: Text(game.getDados[1][0])),
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    game.move(1, 1);
                  });
                },
                child: Text(game.getDados[1][1])),
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    game.move(1, 2);
                  });
                },
                child: Text(game.getDados[1][2])),
          ]),
          Row(children: [
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    game.move(2, 0);
                  });
                },
                child: Text(game.getDados[2][0])),
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    game.move(2, 1);
                  });
                },
                child: Text(game.getDados[2][1])),
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    game.move(2, 2);
                  });
                },
                child: Text(game.getDados[2][2])),
          ])
        ]),
      ),
    );
  }
}
