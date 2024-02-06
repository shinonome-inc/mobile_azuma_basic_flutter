import 'package:flutter/material.dart';
import 'package:qiita_app/widgets/rounded_edge_button.dart';

class TopPage extends StatefulWidget {
  const TopPage({super.key, required this.title});

  final String title;

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
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
            const Spacer(),
            const Text(
              'Qiita Feed App',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 36,
                color: Colors.white,
              ),
            ),
            const Text(
              'Play Ground',
              style: TextStyle(
                fontFamily: 'Noto Sans JP',
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            RoundedEdgeButton(
              text: "ログイン",
              backgroundColor: const Color.fromRGBO(70, 131, 0, 1),
              elevation: 2,
              onPressed: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            RoundedEdgeButton(
              text: "ログインせずに利用する",
              backgroundColor: Colors.transparent,
              textColor: Colors.white,
              elevation: 0,
              onPressed: () {},
            ),
            const SizedBox(height: 64),
          ],
        ),
      ),
    );
  }
}
