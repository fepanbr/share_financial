import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_financial/domain/models/target.dart';
import 'package:share_financial/presentation/screens/create_target.dart';
import 'package:share_financial/presentation/view_model/target_list_provider.dart';

class TargetSettingScreen extends ConsumerStatefulWidget {
  const TargetSettingScreen({super.key});

  @override
  ConsumerState<TargetSettingScreen> createState() =>
      _TargetSettingScreenState();
}

class _TargetSettingScreenState extends ConsumerState<TargetSettingScreen> {
  @override
  Widget build(BuildContext context) {
    AsyncValue<List<Target>> target = ref.watch(targetListProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('객체 설정'),
        ),
        body: switch (target) {
          AsyncData(:final value) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                separatorBuilder: (context, index) => const Divider(),
                itemCount: value.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Icon(value[index].icon),
                    ),
                    title: Text(value[index].name),
                  );
                },
              ),
            ),
          // AsyncError() => const Center(child: CircularProgressIndicator()),
          _ => const Center(child: Text('Error')),
        },
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CreateTargetScreen(),
              ),
            );
          },
          child: const Icon(Icons.add),
        ));
  }
}
