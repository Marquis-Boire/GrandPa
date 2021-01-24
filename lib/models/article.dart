import 'package:flutter/foundation.dart';

class Article {
  @required
  final String id;
  @required
  final String level;
  @required
  final String imageUrl;

  Article({this.id, this.level, this.imageUrl});
}
