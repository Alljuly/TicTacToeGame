class Game {
  List<List<String>> dados = [
    ["", "", ""],
    ["", "", ""],
    ["", "", ""],
  ];

  var vez = "X";

  List<List<String>> get getDados => dados;

  String get getVez => vez;

  void move(int x, int y) {
    if (!isWinner() && dados[x][y] == "") {
      dados[x][y] = vez;
      if (!isWinner()) {
        turn();
      }
    }
  }

  void turn() {
    if (vez == 'X') {
      vez = 'O';
    } else {
      vez = "X";
    }
  }

  bool isWinner() {
    for (var i = 0; i <= 2; i++) {
      if (dados[i][0] != "") {
        if (dados[i][0] == dados[i][1] && dados[i][0] == dados[i][2]) {
          return true;
        }
      }
      if (dados[0][i] != "") {
        if (dados[0][i] == dados[1][i] && dados[0][i] == dados[2][i]) {
          return true;
        }
      }
    }

    if (dados[0][0] != "" &&
        dados[0][0] == dados[1][1] &&
        dados[1][1] == dados[2][2]) {
      return true;
    } else if (dados[2][0] != "" &&
        dados[2][0] == dados[1][1] &&
        dados[1][1] == dados[2][0]) {
      return true;
    }

    return false;
  }
}
