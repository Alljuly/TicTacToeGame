import './game.dart';

abstract class GameModel {
  void makeMove(int row, int col);
  bool isWinner();
}

class Games implements GameModel {
  final Game game; // Instância da classe de lógica do jogo

  Games(this.game);

  @override
  void makeMove(int row, int col) {
    game.move(row, col);
  }

  @override
  bool isWinner() {
    return game.isWinner();
  }
}
