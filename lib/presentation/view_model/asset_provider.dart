import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:share_financial/core/internet_services/dio_client.dart';
import 'package:share_financial/domain/models/asset.dart';
import 'package:share_financial/domain/models/asset_group.dart';

part 'asset_provider.g.dart';

@riverpod
class AssetList extends _$AssetList {
  @override
  Future<AssetGroup> build(int assetGroupId) async {
    final json = await DioClient.instance.get('/asset-group/$assetGroupId');
    return AssetGroup.fromJson(json);
  }

  Future<void> addAsset(Asset asset) async {
    final response = await DioClient.instance.post(
      'asset',
      data: asset.toJson(),
    );

    ref.invalidateSelf();

    await future;
  }
}
