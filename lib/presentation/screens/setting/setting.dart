import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:share_financial/presentation/view_model/asset_group_list_provider.dart';

var f = NumberFormat('###,###,###,###');

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('설정'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: const Text('자산 설정'),
              onTap: () {
                // Handle option 1 tap
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AssetSettingScreen()));
              },
            ),
            ListTile(
              title: Text('Option 2'),
              onTap: () {
                // Handle option 2 tap
              },
            ),
            ListTile(
              title: Text('Option 3'),
              onTap: () {
                // Handle option 3 tap
              },
            ),
            // Add more ListTiles as needed
          ],
        ),
      ),
    );
  }
}

class AssetSettingScreen extends ConsumerStatefulWidget {
  const AssetSettingScreen({super.key});

  @override
  ConsumerState<AssetSettingScreen> createState() => _AssetSettingScreenState();
}

class _AssetSettingScreenState extends ConsumerState<AssetSettingScreen> {
  late AssetGroupListProvider provider;
  @override
  Widget build(BuildContext context) {
    provider = ref.watch(getAssetsGroupProvider);
    provider.init();

    return Scaffold(
      appBar: AppBar(
        title: const Text('자산 설정'),
      ),
      body: provider.haveData
          ? Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: provider.list.length,
                itemBuilder: (context, index) {
                  return CardItem(
                    icon: provider.list[index].icon,
                    title: provider.list[index].name,
                    amount: provider.list[index].totalBalance,
                  );
                },
              ))
          : const Center(child: CircularProgressIndicator()),
    );
  }
}

class CardItem extends StatelessWidget {
  final String title;
  final num amount;
  final IconData icon;

  const CardItem({
    super.key,
    required this.icon,
    required this.title,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          Text(title),
          Text(f.format(amount)),
        ],
      ),
    );
  }
}
