import 'package:flutter/material.dart';

import '../models/article.dart';

class ArticleItem extends StatelessWidget {
  final Article article;

  ArticleItem({this.article});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(article.imageUrl),
        ],
      ),
    );
  }
}
