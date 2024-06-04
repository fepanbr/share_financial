import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:share_financial/domain/models/asset_group.dart';

var f = NumberFormat('###,###,###,###');

class AssetSettingScreen extends StatelessWidget {
  final int id;
  const AssetSettingScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('자산 설정')),
      body: const Placeholder(),
    );
  }
}

class AssetList extends StatelessWidget {
  final AssetGroup assetGroup;
  const AssetList({
    super.key,
    required this.assetGroup,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: assetGroup.assets.length,
      itemBuilder: (context, index) {
        return Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListTile(
                title: Text(assetGroup.assets[index].name),
                subtitle: Text(f.format(assetGroup.assets[index].balance)),
              ),
            ],
          ),
        );
      },
    );
  }
}
