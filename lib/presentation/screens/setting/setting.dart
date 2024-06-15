import 'package:flutter/material.dart';
import 'package:share_financial/presentation/screens/asset_group_setting/asset_group_setting.dart';
import 'package:share_financial/presentation/screens/category_setting/category_setting.dart';
import 'package:share_financial/presentation/screens/target_setting/target_setting.dart';

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
                        builder: (context) => const AssetGroupSettingScreen()));
              },
            ),
            ListTile(
              title: const Text('객체 설정'),
              onTap: () {
                // Handle option 2 tap
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TargetSettingScreen()));
              },
            ),
            ListTile(
              title: const Text('카테고리 설정'),
              onTap: () {
                // Handle option 3 tap
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CategorySettingScreen()));
              },
            ),
            // Add more ListTiles as needed
          ],
        ),
      ),
    );
  }
}
