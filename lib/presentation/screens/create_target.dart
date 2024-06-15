import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_financial/domain/models/target.dart';
import 'package:share_financial/presentation/view_model/target_list_provider.dart';

class CreateTargetScreen extends ConsumerStatefulWidget {
  const CreateTargetScreen({super.key});

  @override
  ConsumerState<CreateTargetScreen> createState() => _CreateTargetScreenState();
}

class _CreateTargetScreenState extends ConsumerState<CreateTargetScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _iconController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('객체 생성'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: '객체 이름',
                ),
                autofocus: true,
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _iconController,
                decoration: const InputDecoration(
                  labelText: '객체 아이콘',
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  ref
                      .read(targetListProvider.notifier)
                      .addTarget(Target(
                        name: _nameController.text,
                        icon: IconData(int.parse(_iconController.text)),
                      ))
                      .then((_) => Navigator.pop(context));
                },
                child: const Text('생성'),
              ),
            ],
          ),
        ));
  }
}
