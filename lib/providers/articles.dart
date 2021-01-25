import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../models/article.dart';

class Articles with ChangeNotifier {
  List<Article> _articles = [];

  List<Article> get articles {
    return [..._articles];
  }

  List<Article> fetchArticlesById(String id) {
    return _articles.where((article) => article.id == id).toList();
  }

  Future<void> fetchArticles() async {
    final url =
        'https://online-grandpa-default-rtdb.firebaseio.com/articles.json';

    try {
      final response = await http.get(url);

      print('${response.body} fetch');

      final responseData = json.decode(response.body) as Map<String, dynamic>;

      final List<Article> loadedArticles = [];

      responseData.forEach((articleId, singleArticle) {
        loadedArticles.add(
          Article(
            id: singleArticle['id'],
            level: singleArticle['level'],
            imageUrl: singleArticle['imageUrl'],
          ),
        );
      });

      _articles = loadedArticles;

      print(_articles);
      notifyListeners();
    } catch (error) {
      print(error);
    }
  }

  Future<void> addArticle(Article article) async {
    final url =
        'https://online-grandpa-default-rtdb.firebaseio.com/articles.json';

    try {
      final response = await http.post(
        url,
        body: json.encode(
          {
            'id': article.id,
            'level': article.level,
            'imageUrl': article.imageUrl,
          },
        ),
      );
      final responseData = json.decode(response.body) as Map<String, dynamic>;

      print('${responseData['level']} responseData');
    } catch (error) {
      print(error);
    }
  }
}
