import 'package:dio/dio.dart';
import 'package:share_financial/core/internet_services/dio_client.dart';
import 'package:share_financial/core/internet_services/dio_exception.dart';
import 'package:share_financial/domain/models/asset.dart';
import 'package:share_financial/domain/repository/asset_repository.dart';

class AssetRepositoryImpl implements AssetRepository {
  @override
  Future<List<Asset>> getAssetList(String id) async {
    try {
      final response = await DioClient.instance.get('/asset-group');
      final valueMap = response as List<dynamic>;
      List<Asset> assetList = [];
      for (var item in valueMap) {
        assetList.add(Asset.fromJson(item));
      }
      return assetList;
    } on DioException catch (e) {
      var error = DioErrorException.fromDioError(e);
      throw error.errorMessage;
    }
  }
}
