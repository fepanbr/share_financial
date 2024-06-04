import 'package:flutter/material.dart';
import 'package:share_financial/presentation/screens/asset_group_setting/asset_group_setting.dart';

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
