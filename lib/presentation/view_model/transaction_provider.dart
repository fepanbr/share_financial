import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:share_financial/core/internet_services/dio_client.dart';
import 'package:share_financial/domain/models/transaction.dart';
part 'transaction_provider.g.dart';

@riverpod
class TransactionList extends _$TransactionList {
  @override
  Future<List<Transaction>> build(DateTime date) async {
    // Add financial logic
    try {
      var formattedDate = date.toString().substring(0, 7).replaceAll('-', '');
      var response =
          await DioClient.instance.get('/transaction?yearMonth=$formattedDate');
      List<Transaction> transactions = response['transactions']
          .map<Transaction>((transaction) => Transaction.fromJson(transaction))
          .toList();

      return transactions;
    } catch (e) {
      print(e);
      return [];
    }
  }

  Future<void> addTransaction(NewTransaction financial) async {
    // Add financial logic
    var response = DioClient.instance.post(
      '/transaction',
      data: financial.toJson(),
    );

    ref.invalidateSelf();

    await response;
  }
}
