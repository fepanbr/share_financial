import 'package:share_financial/domain/models/asset.dart';
import 'package:share_financial/domain/models/category.dart';
import 'package:share_financial/domain/models/user.dart';

class Transaction {
  final int id;
  final String memo;
  final double amount;
  final DateTime date;
  final User user;
  final Category category;
  final Asset asset;

  Transaction({
    required this.id,
    required this.memo,
    required this.amount,
    required this.date,
    required this.user,
    required this.category,
    required this.asset,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['id'],
      memo: json['memo'],
      amount: double.parse(json['amount']),
      date: DateTime.parse(json['date']),
      user: User.fromJson(json['user']),
      category: Category.fromJson(json['category']),
      asset: Asset.fromJson(json['asset']),
    );
  }
}

class NewTransaction {
  final String memo;
  final double amount;
  final String date;
  final int userId;
  final int categoryId;
  final int assetId;

  NewTransaction({
    required this.memo,
    required this.amount,
    required this.date,
    required this.userId,
    required this.categoryId,
    required this.assetId,
  });

  Map<String, dynamic> toJson() {
    return {
      'memo': memo,
      'amount': amount,
      'date': date,
      'userId': userId,
      'categoryId': categoryId,
      'assetId': assetId,
    };
  }
}
