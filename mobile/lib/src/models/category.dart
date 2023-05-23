import 'dart:core';

import '../models/media.dart';

class Category {
  String id;
  String name;
  Media image;
  String imageUrl;
  String description;
  bool selected = false;

  Category();

  Category.fromJSON(Map<String, dynamic> jsonMap) {
    try {
      id = jsonMap['id'].toString();
      name = jsonMap['name'];
      imageUrl = jsonMap['imageUrl'];
      image = jsonMap['media'] != null && (jsonMap['media'] as List).length > 0
          ? Media.fromJSON(jsonMap['media'][0])
          : new Media();
      description = jsonMap['description'];
    } catch (e) {
      id = '';
      name = '';
      imageUrl = '';
      image = new Media();
      description = '';
      print(e);
    }
  }
}
