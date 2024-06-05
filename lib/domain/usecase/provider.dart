import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_financial/domain/usecase/asset_group_usecase.dart';
import 'package:share_financial/infrastructure/repository/provider.dart';

final assetsGroupListProvider = Provider<AssetGroupUseCase>((ref) {
  return AssetGroupUseCaseImpl(ref.read(assetGroupListProvider));
});

final createAssetGroupProvider = Provider<AssetGroupUseCase>((ref) {
  return AssetGroupUseCaseImpl(ref.read(newAssetGroupProvider));
});

final updateAssetGroupDataProvider = Provider<AssetGroupUseCase>((ref) {
  return AssetGroupUseCaseImpl(ref.read(updateAssetGroupProvider));
});

final deleteAssetGroupDataProvider = Provider<AssetGroupUseCase>((ref) {
  return AssetGroupUseCaseImpl(ref.read(deleteAssetGroupProvider));
});

final getAssetGroupProvider = Provider<AssetGroupUseCase>((ref) {
  return AssetGroupUseCaseImpl(ref.read(assetGroupProvider));
});
