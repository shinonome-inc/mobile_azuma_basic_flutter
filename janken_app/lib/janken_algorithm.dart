import 'dart:math';

// [返り値の型] [関数の名前]( [引数の型] [引数の名前] ) {
//   [関数の中で実行する命令];
// }

class JankenGame {
  String play(int userChoice) {
    List<String> jankenHand = ["グー", "チョキ", "パー"];
    int computerChoice = Random().nextInt(3);

    if (userChoice == computerChoice) {
      return "あなたの手: ${jankenHand[userChoice]}, \n コンピュータの手: ${jankenHand[computerChoice]}, \n 結果: あいこ";
    }
    bool isUserWinner = (userChoice == 0 && computerChoice == 1) ||
        (userChoice == 1 && computerChoice == 2) ||
        (userChoice == 2 && computerChoice == 0);

    String result = isUserWinner ? "あなたの勝ち" : "あなたの負け";
    return "あなたの手: ${jankenHand[userChoice]}, \n コンピュータの手: ${jankenHand[computerChoice]}, \n 結果: $result";
  }
}
