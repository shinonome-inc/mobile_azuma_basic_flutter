import 'dart:async';
import 'package:flutter/material.dart';
import 'janken_algorithm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'じゃんけんアプリ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: JankenPage(),
    );
  }
}

//StatefulWidget：Stateオブジェクトを通じて状態を管理
class JankenPage extends StatefulWidget {
  @override
  _JankenPageState createState() => _JankenPageState();
}

class _JankenPageState extends State<JankenPage> {
  String message = "じゃんけん...";
  // final：一度final とつけた変数に値を入れたなら、再代入はできない
  final JankenGame game = JankenGame();
  bool isGameActive = true; // ゲームがアクティブかどうかを追跡

  void playGame(int userChoice) {
    if (isGameActive) {
      // ゲームがアクティブな場合のみプレイ可能
      setState(() {
        message = game.play(userChoice);
        isGameActive = false; // ゲームの状態を非アクティブに更新
      });

      Timer(Duration(seconds: 3), () {
        setState(() {
          message = "じゃんけん...";
          isGameActive = true; // ゲームの状態を再びアクティブに更新
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('じゃんけんアプリ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              message,
              style: TextStyle(fontSize: 24),
            ),
            Row(
              //MainAxisAlignment:余白均等
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //ElevatedButtonボタンの種類
                ElevatedButton(
                  // =>：引数を取らずに_playGame()メソッドを呼び出す短い関数
                  onPressed: isGameActive
                      ? () => playGame(0)
                      : null, // ゲーム状態に基づくボタンの有効化/無効化
                  child: Text('グー'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  // 条件 ? 真の場合の式 : 偽の場合の式
                  onPressed: isGameActive ? () => playGame(1) : null,
                  child: Text('チョキ'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: isGameActive ? () => playGame(2) : null,
                  child: Text('パー'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
