import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:share_financial/core/internet_services/dio_client.dart';
import 'package:share_financial/domain/models/target.dart';

part 'target_list_provider.g.dart';

@riverpod
class TargetList extends _$TargetList {
  @override
  Future<List<Target>> build() async {
    var response = await DioClient.instance.get('/target');
    var valueMap = response['targets'];
    return List<Target>.from(valueMap.map((e) => Target.fromJson(e)).toList());
  }

  Future<void> addTarget(Target target) async {
    await DioClient.instance.post(
      '/target',
      data: target.toJson(),
    );

    ref.invalidateSelf();

    await future;
  }
}
