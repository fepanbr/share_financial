import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:share_financial/domain/models/asset.dart';
import 'package:share_financial/domain/models/asset_group.dart';
import 'package:share_financial/presentation/screens/asset_setting/asset_setting.dart';
import 'package:share_financial/presentation/screens/create_asset_group.dart';
import 'package:share_financial/presentation/view_model/asset_group_list_provider.dart';

var f = NumberFormat('###,###,###,###');

class AssetGroupSettingScreen extends ConsumerStatefulWidget {
  const AssetGroupSettingScreen({super.key});

  @override
  ConsumerState<AssetGroupSettingScreen> createState() =>
      _AssetGroupSettingScreenState();
}

class _AssetGroupSettingScreenState
    extends ConsumerState<AssetGroupSettingScreen> {
  @override
  Widget build(BuildContext context) {
    final assetGroupProvider = ref.watch(assetGroupListProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('자산 그룹 설정'),
        ),
        body: switch (assetGroupProvider) {
          AsyncData(:final value) => Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: value.length,
                itemBuilder: (context, index) {
                  return CardItem(
                    assetGroup: value[index],
                  );
                },
              )),
          AsyncError() => const Center(child: Text('Error')),
          _ => const Center(child: Text('Error2')),
        },
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CreateAssetGroupScreen(),
              ),
            );
          },
          child: const Icon(Icons.add),
        ));
  }
}

class CardItem extends ConsumerStatefulWidget {
  final AssetGroup assetGroup;

  const CardItem({
    super.key,
    required this.assetGroup,
  });

  @override
  ConsumerState<CardItem> createState() => _CardItemState();
}

class _CardItemState extends ConsumerState<CardItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(widget.assetGroup.icon),
            Text(widget.assetGroup.name),
            Text(f.format(widget.assetGroup.totalBalance)),
          ],
        ),
      ),
      onTap: () async {
        var result = await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AssetSettingScreen(id: widget.assetGroup.id!),
          ),
        );

        if (!context.mounted) return;
        if (result == null) return;

        if (result is Asset) {
          Navigator.pop(context, result);
        }
      },
      onLongPress: () {
        // alert dialog

        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('삭제'),
              content: const Text('정말 삭제하시겠습니까?'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('취소'),
                ),
                TextButton(
                  onPressed: () {
                    // delete asset group
                    ref
                        .read(assetGroupListProvider.notifier)
                        .deleteAssetGroup(widget.assetGroup.id!)
                        .then((_) => Navigator.pop(context));
                  },
                  child: const Text('삭제'),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
