import 'dart:math';

// [返り値の型] [関数の名前]( [引数の型] [引数の名前] ) {
//   [関数の中で実行する命令];
// }

class JankenGame {
  String play(int userChoice) {
    List<String> jankenHand = ["グー", "チョキ", "パー"];
    int computerChoice = Random().nextInt(3);

    String result;
    if (userChoice == computerChoice) {
      result = "あいこ";
    } else if ((userChoice == 0 && computerChoice == 1) ||
        (userChoice == 1 && computerChoice == 2) ||
        (userChoice == 2 && computerChoice == 0)) {
      result = "あなたの勝ち";
    } else {
      result = "あなたの負け";
    }
    return "あなたの手: ${jankenHand[userChoice]}, \n コンピュータの手: ${jankenHand[computerChoice]}, \n 結果: $result";
  }
}
