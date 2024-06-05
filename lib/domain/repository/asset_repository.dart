import 'package:share_financial/domain/models/asset.dart';

abstract class AssetRepository {
  Future<List<Asset>> getAssetList(String id);
  // Future<NewAsset> addNewAsset(String name, int iconCode, double balance);
  // Future<NewAsset> updateAsset(
  //     String id, String name, IconData icon, double balance);
  // Future<void> deleteAsset(String id);
}
