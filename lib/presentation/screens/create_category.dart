import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_financial/domain/models/category.dart';
import 'package:share_financial/presentation/view_model/category_list_provider.dart';

class CreateCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Category'),
      ),
      body: const CategoryForm(),
    );
  }
}

class CategoryForm extends ConsumerStatefulWidget {
  const CategoryForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CategoryFormState();
}

class _CategoryFormState extends ConsumerState<CategoryForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _iconController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              labelText: '카테고리 이름',
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: _iconController,
            decoration: const InputDecoration(
              labelText: '카테고리 아이콘',
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              ref
                  .read(categoryListProvider.notifier)
                  .addCategory(NewCategory(
                    name: _nameController.text,
                    icon: IconData(int.parse(_iconController.text)),
                  ))
                  .then((_) => Navigator.pop(context));
            },
            child: Text('Create'),
          ),
        ],
      ),
    );
  }
}
