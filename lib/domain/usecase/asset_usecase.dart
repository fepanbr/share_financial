import 'package:share_financial/domain/models/asset.dart';
import 'package:share_financial/domain/repository/asset_repository.dart';

abstract class AssetUseCase {
  Future<List<Asset>> getAssetList(String id);
  // Future<NewAsset> addNewAsset(String name, int iconCode, double balance);
}

class AssetUseCaseImpl extends AssetUseCase {
  final AssetRepository assetRepository;

  AssetUseCaseImpl(this.assetRepository);

  // @override
  // Future<NewAsset> addNewAsset(String name, int iconCode, double balance) {
  //   return assetRepository.addNewAsset(name, iconCode, balance);
  // }

  @override
  Future<List<Asset>> getAssetList(String id) {
    return assetRepository.getAssetList(id);
  }
}
