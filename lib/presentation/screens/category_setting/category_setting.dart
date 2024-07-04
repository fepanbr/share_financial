import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_financial/domain/models/category.dart';
import 'package:share_financial/presentation/screens/create_category.dart';
import 'package:share_financial/presentation/view_model/category_list_provider.dart';

class CategorySettingScreen extends ConsumerStatefulWidget {
  const CategorySettingScreen({super.key});

  @override
  ConsumerState<CategorySettingScreen> createState() =>
      _CategorySettingScreenState();
}

class _CategorySettingScreenState extends ConsumerState<CategorySettingScreen> {
  @override
  Widget build(BuildContext context) {
    AsyncValue<List<Category>> categoryList = ref.watch(categoryListProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('카테고리 설정'),
        ),
        body: switch (categoryList) {
          AsyncData(:final value) => ListView.separated(
              separatorBuilder: (context, index) => const Divider(),
              itemCount: value.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Icon(value[index].icon),
                  ),
                  title: Text(value[index].name),
                  onTap: () {
                    Navigator.pop(context, value[index]);
                  },
                );
              },
            ),
          // AsyncError() => const Center(child: CircularProgressIndicator()),
          _ => const Center(child: Text('Error')),
        },
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            // Handle option 3 tap
            await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CreateCategoryScreen()));
          },
          child: const Icon(Icons.add),
        ));
  }
}
