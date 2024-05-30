// ignore: depend_on_referenced_packages
import 'package:riverpod/riverpod.dart';
import 'package:share_financial/domain/repository/asset_group_repository.dart';
import 'package:share_financial/infrastructure/repository/asset_group_repository_implement.dart';

final assetGroupListProvider = Provider<AssetGroupRepository>((ref) {
  return AssetGroupRepositoryImpl();
});

final newAssetGroupProvider = Provider<AssetGroupRepository>((ref) {
  return AssetGroupRepositoryImpl();
});

final updateAssetGroupProvider = Provider<AssetGroupRepository>((ref) {
  return AssetGroupRepositoryImpl();
});

final deleteAssetGroupProvider = Provider<AssetGroupRepository>((ref) {
  return AssetGroupRepositoryImpl();
});
