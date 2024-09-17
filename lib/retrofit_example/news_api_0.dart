import 'package:dio/dio.dart';

import '../json_serializable_example/article.dart';

class SpaceFlightNewsApi {
  const SpaceFlightNewsApi(this._dio);

  final Dio _dio;

  Future<List<Article>> getArticles() async {
    final response = await _dio.get<List<dynamic>>('/articles');
    final json = response.data!;
    final articles = json
        .map((dynamic i) => Article.fromJson(i as Map<String, dynamic>))
        .toList();
    return articles;
  }
}
