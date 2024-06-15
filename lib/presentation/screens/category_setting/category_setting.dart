import 'package:flutter/material.dart';

class CategorySettingScreen extends StatefulWidget {
  const CategorySettingScreen({super.key});

  @override
  State<CategorySettingScreen> createState() => _CategorySettingScreenState();
}

class _CategorySettingScreenState extends State<CategorySettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('카테고리 설정'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                leading: const Icon(Icons.category),
                title: Text('카테고리 $index')),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: 2),
      ),
    );
  }
}
