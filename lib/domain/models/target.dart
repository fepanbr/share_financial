import 'package:flutter/material.dart';

class Target {
  int? id;
  late String name;
  late IconData icon;

  Target({this.id, required this.name, required this.icon});

  Target.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    icon = IconData(json['iconCode'] ?? 0, fontFamily: 'MaterialIcons');
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['iconCode'] = icon.codePoint;
    return data;
  }
}
