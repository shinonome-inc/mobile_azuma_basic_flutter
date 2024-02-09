import 'package:flutter/material.dart';
import 'package:qiita_app/models/article.dart';
import 'package:qiita_app/widgets/article_container.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  List<Article> articles = [
    Article(
      title: 'title',
      userIconUrl:
          'https://firebasestorage.googleapis.com/v0/b/gs-expansion-test.appspot.com/o/unknown_person.png?alt=media',
      userName: 'userName',
      postedDate: '2024/02/09',
      likesCount: 2,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed'),
      ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return ArticleContainer(article: articles[index]);
        },
      ),
      // ダミー表示
      // body: Column(
      //   children: [
      //     ArticleContainer(
      //       article: Article(
      //         title: 'title',
      //         userIconUrl:
      //             'https://firebasestorage.googleapis.com/v0/b/gs-expansion-test.appspot.com/o/unknown_person.png?alt=media',
      //         userName: 'userName',
      //         postedDate: '2024/02/09',
      //         likesCount: 2,
      //       ),
      //     ),
      //   ],
      // ),
    );
    //

    //     Expanded(
    //       child: ListView(
    //         children: articles
    //         .map((article)) => ArticleContainer(article: article)
    //         ),
    //         .toList(),
    //       ),
    //   ],
    // ),

    // child: Text('Feed Page'),
  }
}
