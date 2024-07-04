import 'package:share_financial/domain/models/asset.dart';
import 'package:share_financial/domain/models/category.dart';
import 'package:share_financial/domain/models/target.dart';

class Transaction {
  final String id;
  final String memo;
  final double amount;
  final DateTime date;
  final Target target;
  final Category category;
  final Asset asset;

  Transaction({
    required this.id,
    required this.memo,
    required this.amount,
    required this.date,
    required this.target,
    required this.category,
    required this.asset,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['id'],
      memo: json['title'],
      amount: json['amount'],
      date: DateTime.parse(json['date']),
      target: Target.fromJson(json['target']),
      category: Category.fromJson(json['category']),
      asset: Asset.fromJson(json['asset']),
    );
  }
}

class NewTransaction {
  final String memo;
  final double amount;
  final DateTime date;
  final int targetId;
  final int categoryId;
  final int assetId;

  NewTransaction({
    required this.memo,
    required this.amount,
    required this.date,
    required this.targetId,
    required this.categoryId,
    required this.assetId,
  });

  Map<String, dynamic> toJson() {
    return {
      'memo': memo,
      'amount': amount,
      'date':
          '${date.year}${date.month.toString().padLeft(2, '0')}${date.day.toString().padLeft(2, '0')}',
      'targetId': targetId,
      'categoryId': categoryId,
      'assetId': assetId,
    };
  }
}
