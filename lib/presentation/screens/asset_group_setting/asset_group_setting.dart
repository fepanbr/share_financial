import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
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

class CardItem extends StatelessWidget {
  final AssetGroup assetGroup;

  const CardItem({
    super.key,
    required this.assetGroup,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(assetGroup.icon),
            Text(assetGroup.name),
            Text(f.format(assetGroup.totalBalance)),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AssetSettingScreen(id: assetGroup.id!),
          ),
        );
      },
    );
  }
}
