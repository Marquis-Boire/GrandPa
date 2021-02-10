import 'package:flutter/material.dart';

import 'package:loading_indicator/loading_indicator.dart';
import '../models/article.dart';
import 'package:transparent_image/transparent_image.dart';

class ArticleItem extends StatelessWidget {
  final Article article;

  ArticleItem({this.article});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Center(
            child: Container(
              width: 30.0,
              height: 10.0,
              child: LoadingIndicator(
                indicatorType: Indicator.ballBeat,
              ),
            ),
          ),
          Container(
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: article.imageUrl,
            ),
          )
        ],
      ),
    );
  }
}
