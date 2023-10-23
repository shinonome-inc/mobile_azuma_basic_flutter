import 'dart:io';
import 'dart:math';

void janken() {
  var jankenHand = ["グー", "チョキ", "パー"];
  for (var i = 0; i < jankenHand.length; i++) {
    print("$i: ${jankenHand[i]}");
  }

  print("じゃんけんの手を入力...（0:グー, 1:チョキ, 2:パー");
  var userInput = stdin.readLineSync() ?? '';

  if (userInput == null || int.tryParse(userInput) == null ||
      int.parse(userInput) < 0 || int.parse(userInput) > 2) {
    print("0,1,2のいずれかを入力してください");
    return;
  }

  int userChoice = int.parse(userInput);
  int computerChoice = Random().nextInt(3);

  print("あなたが選んだ手: ${jankenHand[userChoice]}");
  print("コンピューターの選択: ${jankenHand[computerChoice]}");

  if (userChoice == computerChoice) {
    print("あいこ");
  } else if ((userChoice == 0 && computerChoice == 1) || (userChoice == 2) ||
      (userChoice == 2 && computerChoice == 0)) {
    print("あなたの勝ち");
  } else {
    print("あなたの負け");
  }
}

void main(){
  janken();
}