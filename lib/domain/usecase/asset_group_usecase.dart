import 'package:share_financial/domain/models/asset_group.dart';
import 'package:share_financial/domain/repository/asset_group_repository.dart';

abstract class AssetGroupUseCase {
  Future<List<AssetGroup>> getAllAssetGroups();
  Future<NewAssetGroup> createNewAssetGroup(
      String name, int iconCode, double balance);
  Future<AssetGroup> getAssetGroup(String id);
  // Future<NewAssetGroup> updateAssetGroupInfo(
  //     String id, String name, String job);
  // Future<void> deleteAssetGroupInfo(String id);
}

class AssetGroupUseCaseImpl extends AssetGroupUseCase {
  final AssetGroupRepository assetGroupRepository;

  AssetGroupUseCaseImpl(this.assetGroupRepository);

  @override
  Future<NewAssetGroup> createNewAssetGroup(
      String name, int iconCode, double balance) {
    return assetGroupRepository.addNewAssetGroup(name, iconCode, balance);
  }

  @override
  Future<List<AssetGroup>> getAllAssetGroups() {
    return assetGroupRepository.getAssetGroupList();
  }

  @override
  Future<AssetGroup> getAssetGroup(String id) {
    return assetGroupRepository.getAssetGroup(id);
  }
}
