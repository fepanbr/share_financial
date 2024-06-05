import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:share_financial/domain/models/asset_group.dart';
import 'package:share_financial/presentation/screens/create_asset.dart';
import 'package:share_financial/presentation/view_model/asset_group_provider.dart';

var f = NumberFormat('###,###,###,###');

class AssetSettingScreen extends StatelessWidget {
  final int id;
  const AssetSettingScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('자산 설정')),
        body: AssetList(id: id),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CreateAssetScreen(assetGroupId: id),
              ),
            );
          },
          child: const Icon(Icons.add),
        ));
  }
}

class AssetList extends ConsumerStatefulWidget {
  final int id;
  const AssetList({
    super.key,
    required this.id,
  });

  @override
  ConsumerState<AssetList> createState() => _AssetListState();
}

class _AssetListState extends ConsumerState<AssetList> {
  @override
  Widget build(BuildContext context) {
    final AsyncValue<AssetGroup> assetGroup =
        ref.watch(assetGroupProvider(widget.id));

    return switch (assetGroup) {
      AsyncData(:final value) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
            separatorBuilder: (context, index) => const Divider(),
            itemCount: value.assets.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Row(
                  children: [
                    Text(value.assets[index].name),
                    const Spacer(),
                    Text('${f.format(value.assets[index].balance)} 원'),
                  ],
                ),
              );
            },
          ),
        ),
      AsyncError() => const Center(child: CircularProgressIndicator()),
      _ => const Center(child: Text('Error')),
    };
  }
}
