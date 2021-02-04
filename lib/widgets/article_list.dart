import 'package:flutter/material.dart';

import '../models/article.dart';
import '../widgets/article_item.dart';

class ArticleList extends StatelessWidget {
  final List<Article> articles;

  ArticleList(this.articles);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: articles.map(
          (article) {
            return ArticleItem(article: article);
          },
          // Text(article.imageUrl),
        ).toList(),
      ),
    );
  }
}
