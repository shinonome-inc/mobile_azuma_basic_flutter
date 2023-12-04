import 'package:flutter/material.dart';
import 'button_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'qiita_app',
      theme: ThemeData(),
      home: MyHomePage(title: 'Qiita Feed App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background_img.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Qiita Feed App',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 36,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Play Ground',
                      style: TextStyle(
                        fontFamily: 'Noto Sans JP',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                CustomButton(
                  text: "ログイン",
                  backgroundColor: const Color.fromRGBO(70, 131, 0, 1),
                  elevation: 2,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                  text: "ログインせずに利用する",
                  backgroundColor: Colors.transparent,
                  textColor: Colors.white,
                  elevation: 0,
                  onPressed: () {},
                ),
                const SizedBox(height: 64),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
