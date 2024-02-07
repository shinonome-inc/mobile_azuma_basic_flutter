import 'package:flutter/material.dart';
import 'package:qiita_app/widgets/bottom_navigation.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Feed Page'),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
