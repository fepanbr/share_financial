import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_financial/domain/models/asset.dart';
import 'package:share_financial/presentation/view_model/asset_group_provider.dart';
import 'package:share_financial/presentation/view_model/asset_provider.dart';

class CreateAssetScreen extends StatelessWidget {
  final int assetGroupId;
  const CreateAssetScreen({super.key, required this.assetGroupId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('자산 생성'),
      ),
      body: FormComponent(assetGroupId: assetGroupId),
    );
  }
}

class FormComponent extends ConsumerStatefulWidget {
  final int assetGroupId;
  const FormComponent({super.key, required this.assetGroupId});

  @override
  ConsumerState<FormComponent> createState() => _FormComponentState();
}

class _FormComponentState extends ConsumerState<FormComponent> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _balanceController =
      TextEditingController(text: '0');

  @override
  Widget build(BuildContext context) {
    ref.watch(AssetGroupProvider(widget.assetGroupId));
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  labelText: '자산 이름', hintText: '예) OO은행, OO뱅크'),
              controller: _nameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '자산 이름을 입력해주세요.';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                labelText: '자산 금액',
              ),
              controller: _balanceController,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '자산 금액을 입력해주세요.';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                if (!_key.currentState!.validate()) {
                  return;
                }

                final asset = Asset(
                  name: _nameController.text,
                  balance: double.parse(_balanceController.text),
                  assetGroupId: widget.assetGroupId,
                );

                await ref
                    .read(assetListProvider(widget.assetGroupId).notifier)
                    .addAsset(asset)
                    .then(
                      (value) => Navigator.pop(context),
                    );
              },
              child: const Text('생성'),
            ),
          ],
        ),
      ),
    );
  }
}
