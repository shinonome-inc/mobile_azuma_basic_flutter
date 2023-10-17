import 'dart:io';

void main() {
  print("西暦を入力してください。");
  int year = int.parse(stdin.readLineSync()!);
  if ((year % 4 == 0 && year % 100 != 0) || (year % 400 ==0)){
    print("$yearはうるう年です。");
  }else {
    print("$yearはうるう年ではありません。");
  }
}
