import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_financial/core/internet_services/dio_client.dart';
import 'package:share_financial/domain/models/asset_group.dart';
import 'package:share_financial/presentation/view_model/asset_group_list_provider.dart';

class CreateAssetGroupScreen extends StatelessWidget {
  const CreateAssetGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('자산 그룹 생성'),
      ),
      body: FormComponent(),
    );
  }
}

class FormComponent extends ConsumerStatefulWidget {
  const FormComponent({
    super.key,
  });

  @override
  ConsumerState<FormComponent> createState() => _FormComponentState();
}

class _FormComponentState extends ConsumerState<FormComponent> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: '자산 그룹 이름',
              ),
              controller: _nameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '자산 그룹 이름을 입력해주세요.';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
              ),
              onPressed: () async {
                if (_key.currentState!.validate()) {
                  ref
                      .read(assetGroupListProvider.notifier)
                      .addAssetGroup(AssetGroup(
                          assets: [],
                          name: _nameController.text,
                          icon: Icons.wallet))
                      .then((_) => Navigator.pop(context));
                }
              },
              child: const Text('생성',
                  style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
