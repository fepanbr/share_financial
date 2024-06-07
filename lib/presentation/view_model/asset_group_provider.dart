import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:share_financial/core/internet_services/dio_client.dart';
import 'package:share_financial/domain/models/asset_group.dart';

part 'asset_group_provider.g.dart';

// @riverpod
// Future<AssetGroup> assetGroup(AssetGroupRef ref, int assetGroupId) async {
//   final json = await DioClient.instance.get('/asset-group/$assetGroupId');
//   return AssetGroup.fromJson(json);
// }

@riverpod
class AssetGroupList2 extends _$AssetGroupList2 {
  @override
  Future<AssetGroup> build(int assetGroupId) async {
    final json = await DioClient.instance.get('/asset-group/$assetGroupId');
    return AssetGroup.fromJson(json);
  }

  Future<void> addAssetGroup(AssetGroup assetGroup) async {
    await DioClient.instance.post(
      'asset-group',
      data: assetGroup.toJson(),
    );

    ref.invalidateSelf();

    await future;
  }

  Future<void> deleteAssetGroup(int assetGroupId) async {
    try {
      await DioClient.instance.delete('asset-group/$assetGroupId');

      ref.invalidateSelf();

      await future;
    } catch (e) {
      print(e);
    }
  }
}
