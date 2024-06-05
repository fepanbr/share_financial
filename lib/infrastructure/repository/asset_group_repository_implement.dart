import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:share_financial/core/internet_services/dio_client.dart';
import 'package:share_financial/core/internet_services/dio_exception.dart';
import 'package:share_financial/domain/models/asset_group.dart';
import 'package:share_financial/domain/repository/asset_group_repository.dart';

class AssetGroupRepositoryImpl implements AssetGroupRepository {
  @override
  Future<NewAssetGroup> addNewAssetGroup(
      String name, int iconCode, double balance) async {
    try {
      final response = await DioClient.instance.post(
        'asset-group',
        data: {
          'name': name,
          'icon_code': iconCode,
          'balance': balance,
        },
      );
      return NewAssetGroup.fromJson(response);
    } on DioException catch (e) {
      var error = DioErrorException.fromDioError(e);
      throw error.errorMessage;
    }
  }

  @override
  Future<NewAssetGroup> updateAssetGroup(
      String id, String name, IconData icon, double balance) {
    // TODO: implement updateAssetGroup
    throw UnimplementedError();
  }

  @override
  Future<List<AssetGroup>> getAssetGroupList() async {
    try {
      final response = await DioClient.instance.get('/asset-group');
      final valueMap = response['assetGroups'];
      List<AssetGroup> assetList = [];
      for (var item in valueMap) {
        assetList.add(AssetGroup.fromJson(item));
      }
      return assetList;
    } on DioException catch (e) {
      var error = DioErrorException.fromDioError(e);
      throw error.errorMessage;
    }
  }

  @override
  Future<void> deleteAssetGroup(String id) {
    // TODO: implement deleteAssetGroup
    throw UnimplementedError();
  }

  @override
  Future<AssetGroup> getAssetGroup(String id) async {
    try {
      final response = await DioClient.instance.get('/asset-group/$id');
      return AssetGroup.fromJson(response);
    } on DioException catch (e) {
      var error = DioErrorException.fromDioError(e);
      throw error.errorMessage;
    }
  }
}
