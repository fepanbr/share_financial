import 'package:flutter/material.dart';

class Asset {
  int? id;
  late String name;
  late IconData icon;
  late double balance = 0.0;

  Asset(
      {this.id, required this.name, required this.icon, required this.balance});

  Asset.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    icon = IconData(json['iconCode'], fontFamily: 'MaterialIcons');
    balance = double.parse(json['balance']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['iconCode'] = icon.codePoint;
    data['balance'] = balance;
    return data;
  }
}
