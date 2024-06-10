import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:share_financial/core/internet_services/dio_client.dart';
import 'package:share_financial/domain/models/asset_group.dart';

part 'asset_group_list_provider.g.dart';

@riverpod
class AssetGroupList extends _$AssetGroupList {
  @override
  Future<List<AssetGroup>> build() async {
    final response = await DioClient.instance.get('/asset-group');
    final valueMap = response['assetGroups'];
    return List<AssetGroup>.from(
        valueMap.map((e) => AssetGroup.fromJson(e)).toList());
  }

  Future<void> addAssetGroup(AssetGroup assetGroup) async {
    await DioClient.instance.post(
      '/asset-group',
      data: assetGroup.toJson(),
    );

    ref.invalidateSelf();

    await future;
  }

  Future<void> deleteAssetGroup(int id) async {
    await DioClient.instance.delete('/asset-group/$id');

    ref.invalidateSelf();

    await future;
  }
}
