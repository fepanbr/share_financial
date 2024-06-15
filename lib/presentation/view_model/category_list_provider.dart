import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:share_financial/core/internet_services/dio_client.dart';
import 'package:share_financial/domain/models/category.dart';

part 'category_list_provider.g.dart';

@riverpod
class CategoryList extends _$CategoryList {
  @override
  Future<List<Category>> build() async {
    final response = await DioClient.instance.get('/category');
    final valueMap = response['categories'];
    return List<Category>.from(
        valueMap.map((e) => Category.fromJson(e)).toList());
  }

  Future<void> addCategory(NewCategory category) async {
    try {
      Category response = await DioClient.instance
          .post(
            '/category',
            data: category.toJson(),
          )
          .then((value) => Category.fromJson(value));

      print(response);

      ref.invalidateSelf();

      await future;
    } catch (e) {
      print(e);
    }
  }

  Future<void> deleteCategory(int id) async {
    await DioClient.instance.delete('/category/$id');

    ref.invalidateSelf();

    await future;
  }
}
