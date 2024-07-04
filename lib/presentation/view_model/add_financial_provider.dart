import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:share_financial/core/internet_services/dio_client.dart';
import 'package:share_financial/domain/models/transaction.dart';
part 'add_financial_provider.g.dart';

@riverpod
class TransactionList extends _$TransactionList {
  @override
  Future<void> build() async {
    // Add financial logic
  }

  Future<void> addTransaction(NewTransaction financial) async {
    // Add financial logic
    var response = DioClient.instance.post(
      '/financial',
      data: financial.toJson(),
    );

    ref.invalidateSelf();

    await response;
  }
}
