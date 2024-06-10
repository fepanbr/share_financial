import 'package:flutter/material.dart';
import 'package:share_financial/domain/models/asset.dart';

class AssetGroup {
  int? id;
  late String name;
  late IconData icon;
  late List<Asset> assets;

  AssetGroup(
      {this.id, required this.name, required this.icon, required this.assets});

  AssetGroup.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    icon = IconData(json['iconCode'] ?? 0, fontFamily: 'MaterialIcons');
    assets = json['assets'].map<Asset>((e) => Asset.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['iconCode'] = icon.codePoint;
    return data;
  }

  get totalBalance {
    double total = 0;
    for (var element in assets) {
      total += element.balance;
    }
    return total;
  }
}
