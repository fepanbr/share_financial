import 'package:flutter/material.dart';

class AssetGroup {
  int? id;
  late String name;
  late IconData icon;

  AssetGroup({this.id, required this.name, required this.icon});

  AssetGroup.fromJson(Map<String, dynamic> json) {
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

class NewAssetGroup {
  String? name;
  IconData? icon;
  double? balance;
  String? id;
  String? createdAt;
  String? updatedAt;

  NewAssetGroup(
      {this.name,
      this.icon,
      this.id,
      this.balance,
      this.createdAt,
      this.updatedAt});

  NewAssetGroup.fromJson(Map<String, dynamic> json) {
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
