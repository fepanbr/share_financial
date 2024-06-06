import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:share_financial/core/internet_services/dio_client.dart';
import 'package:share_financial/domain/models/asset.dart';
import 'package:share_financial/domain/models/asset_group.dart';

part 'asset_group_provider.g.dart';

@riverpod
Future<AssetGroup> assetGroup(AssetGroupRef ref, int assetGroupId) async {
  final json = await DioClient.instance.get('/asset-group/$assetGroupId');
  return AssetGroup.fromJson(json);
}
