import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../models/article.dart';

class Articles with ChangeNotifier {
  List<Article> _articles = [
    //Experiment 1
    Article(
      id: 'p1',
      level: '100',
      imageUrl: 'https://i.ibb.co/q0dF5Ws/E1P1.jpg',
    ),
    Article(
      id: 'p1',
      level: '100',
      imageUrl: 'https://i.ibb.co/yh8xmw2/E1P2.jpg',
    ),
    Article(
      id: 'p1',
      level: '100',
      imageUrl: 'https://i.ibb.co/W5NG03F/E1P3.jpg',
    ),
    Article(
      id: 'p1',
      level: '100',
      imageUrl: 'https://i.ibb.co/Gcchh7w/E1P4.jpg',
    ),

//Experiment

    Article(
      id: 'p2',
      level: '100',
      imageUrl: 'https://i.ibb.co/F02yy3W/E2P1.jpg',
    ),
    Article(
      id: 'p2',
      level: '100',
      imageUrl: 'https://i.ibb.co/grmfHwj/E2P2.jpg',
    ),

    //Experiment 3

    Article(
      id: 'p3',
      level: '100',
      imageUrl: 'https://i.ibb.co/T84frHz/E3P1.jpg',
    ),
    Article(
      id: 'p3',
      level: '100',
      imageUrl: 'https://i.ibb.co/gtMvcbc/E3P2.jpg',
    ),

    //Experiment 4

    Article(
      id: 'p4',
      level: '100',
      imageUrl: 'https://i.ibb.co/kXNnzgK/E4P1.jpg',
    ),
    Article(
      id: 'p4',
      level: '100',
      imageUrl: 'https://i.ibb.co/gg7rBvb/E4P2.jpg',
    ),

    //Experiment 5

    Article(
      id: 'p5',
      level: '100',
      imageUrl: 'https://i.ibb.co/DVctyKb/E5P1.jpg',
    ),
    Article(
      id: 'p5',
      level: '100',
      imageUrl: 'https://i.ibb.co/v18LS1N/E5P2.jpg',
    ),
    Article(
      id: 'p5',
      level: '100',
      imageUrl: 'https://i.ibb.co/FWT47pY/E5P3.jpg',
    ),
    Article(
      id: 'p5',
      level: '100',
      imageUrl: 'https://i.ibb.co/NYWNkw3/E5P4.jpg',
    ),

    //Experiment 6

    Article(
      id: 'p6',
      level: '100',
      imageUrl: 'https://i.ibb.co/8g4W9Yt/E6P1.jpg',
    ),
    Article(
      id: 'p6',
      level: '100',
      imageUrl: 'https://i.ibb.co/pbQjKxZ/E6P2.jpg',
    ),

    //Experiment 7

    Article(
      id: 'p7',
      level: '100',
      imageUrl: 'https://i.ibb.co/zfkKgSJ/E7P1.jpg',
    ),
    Article(
      id: 'p7',
      level: '100',
      imageUrl: 'https://i.ibb.co/tLs4wgZ/E7P2.jpg',
    ),

    //Experiment 8
    Article(
      id: 'p8',
      level: '100',
      imageUrl: 'https://i.ibb.co/h1WPdMc/E8P1.jpg',
    ),
    Article(
      id: 'p8',
      level: '100',
      imageUrl: 'https://i.ibb.co/LhPkKjV/E8P2.jpg',
    ),
    Article(
      id: 'p8',
      level: '100',
      imageUrl: 'https://i.ibb.co/y5kYCnC/E8P3.jpg',
    ),

    //Experiment 9

    Article(
      id: 'p9',
      level: '100',
      imageUrl: 'https://i.ibb.co/XYXpW4F/E9P1.jpg',
    ),
    Article(
      id: 'p9',
      level: '100',
      imageUrl: 'https://i.ibb.co/BnvYYnv/E9P2.jpg',
    ),
    Article(
      id: 'p9',
      level: '100',
      imageUrl: 'https://i.ibb.co/MCFgsfX/E9P3.jpg',
    ),

    //Experiment 10

    Article(
      id: 'p10',
      level: '100',
      imageUrl: 'https://i.ibb.co/GFKSgDV/E10P1.jpg',
    ),
    Article(
      id: 'p10',
      level: '100',
      imageUrl: 'https://i.ibb.co/80RzB1s/E10P2.jpg',
    ),
  ];

  List<Article> get articles {
    return [..._articles];
  }

  List<Article> fetchArticlesById(String id) {
    return _articles.where((article) => article.id == id).toList();
  }

  Future<void> fetchArticles() async {
    // final url =
    // 'https://online-grandpa-default-rtdb.firebaseio.com/articles.json';
//
    // try {
    // final response = await http.get(url);
//
    // print('${response.body} fetch');
//
    // final responseData = json.decode(response.body) as Map<String, dynamic>;
//
    // final List<Article> loadedArticles = [];
//
    // responseData.forEach((articleId, singleArticle) {
    // loadedArticles.add(
    // Article(
    // id: singleArticle['id'],
    // level: singleArticle['level'],
    // imageUrl: singleArticle['imageUrl'],
    // ),
    // );
    // });
//
    // _articles = loadedArticles;
//
    // print(_articles);
    // notifyListeners();
    // } catch (error) {
    // print(error);
    // }
  }

  Future<void> addArticle(Article article) async {
    // final url =
    // 'https://online-grandpa-default-rtdb.firebaseio.com/articles.json';
//
    // try {
    // final response = await http.post(
    // url,
    // body: json.encode(
    // {
    // 'id': article.id,
    // 'level': article.level,
    // 'imageUrl': article.imageUrl,
    // },
    // ),
    // );
    // final responseData = json.decode(response.body) as Map<String, dynamic>;
//
    // print('${responseData['level']} responseData');
    // } catch (error) {
    // print(error);
    // }
  }
}
