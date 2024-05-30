import 'package:flutter/material.dart';
import 'package:share_financial/domain/models/asset_group.dart';

abstract class AssetGroupRepository {
  Future<List<AssetGroup>> getAssetGroupList();
  Future<NewAssetGroup> addNewAssetGroup(
      String name, int iconCode, double balance);
  Future<NewAssetGroup> updateAssetGroup(
      String id, String name, IconData icon, double balance);
  Future<void> deleteAssetGroup(String id);
}
