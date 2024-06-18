import 'package:flutter/material.dart';

class Category {
  int? id;
  late String name;
  late IconData icon;

  Category({this.id, required this.name, required this.icon});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    icon = IconData(json['iconCode'], fontFamily: 'MaterialIcons');
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['iconCode'] = icon.codePoint;
    return data;
  }
}

class NewCategory {
  int? id;
  late String name;
  late IconData icon;

  NewCategory({this.id, required this.name, required this.icon});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['name'] = name;
    data['iconCode'] = icon.codePoint;
    return data;
  }
}
