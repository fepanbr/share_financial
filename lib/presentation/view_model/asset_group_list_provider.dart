import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_financial/domain/models/asset_group.dart';
import 'package:share_financial/domain/usecase/provider.dart';

class AssetGroupListProvider extends ChangeNotifier {
  final ChangeNotifierProviderRef ref;
  List<AssetGroup> list = [];
  bool haveData = false;

  AssetGroupListProvider({required this.ref});

  Future<void> init() async {
    list = await ref.watch(assetsGroupListProvider).getAllAssetGroups();
    haveData = true;
    notifyListeners();
  }
}

final getAssetsGroupProvider = ChangeNotifierProvider<AssetGroupListProvider>(
    (ref) => AssetGroupListProvider(ref: ref));
