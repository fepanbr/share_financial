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

class NewAsset {
  String? name;
  IconData? icon;
  double? balance;
  String? id;
  String? createdAt;
  String? updatedAt;

  NewAsset(
      {this.name,
      this.icon,
      this.id,
      this.balance,
      this.createdAt,
      this.updatedAt});

  NewAsset.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    icon = IconData(json['icon'], fontFamily: 'MaterialIcons');
    id = json['id'];
    balance = json['balance'];
    createdAt = json['balance'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['icon'] = icon?.codePoint;
    data['id'] = id;
    data['balance'] = balance;
    data['createdAt'] = createdAt;
    return data;
  }
}
