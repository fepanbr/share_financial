import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:share_financial/domain/models/asset_group.dart';
import 'package:share_financial/presentation/screens/asset_setting/asset_setting.dart';
import 'package:share_financial/presentation/screens/create_asset_group.dart';
import 'package:share_financial/presentation/view_model/asset_group_list_provider.dart';
import 'package:share_financial/presentation/view_model/asset_group_provider.dart';

var f = NumberFormat('###,###,###,###');

class AssetGroupSettingScreen extends ConsumerStatefulWidget {
  const AssetGroupSettingScreen({super.key});

  @override
  ConsumerState<AssetGroupSettingScreen> createState() =>
      _AssetGroupSettingScreenState();
}

class _AssetGroupSettingScreenState
    extends ConsumerState<AssetGroupSettingScreen> {
  late AssetGroupListProvider provider;
  @override
  Widget build(BuildContext context) {
    provider = ref.watch(getAssetGroupListProvider);
    provider.init();

    return Scaffold(
        appBar: AppBar(
          title: const Text('자산 그룹 설정'),
        ),
        body: provider.haveData
            ? Padding(
                padding: const EdgeInsets.all(10),
                child: ListView.builder(
                  itemCount: provider.list.length,
                  itemBuilder: (context, index) {
                    return CardItem(
                      assetGroup: provider.list[index],
                    );
                  },
                ))
            : const Center(child: CircularProgressIndicator()),
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
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AssetSettingScreen(id: widget.assetGroup.id!),
          ),
        );
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
                        .read(AssetGroupList2Provider(widget.assetGroup.id!)
                            .notifier)
                        .deleteAssetGroup(widget.assetGroup.id!);
                    Navigator.pop(context);
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
