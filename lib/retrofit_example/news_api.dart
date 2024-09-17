import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../json_serializable_example/article.dart';

part 'news_api.g.dart';

@RestApi()
abstract class SpaceFlightNewsApi {
  factory SpaceFlightNewsApi(Dio dio) = _SpaceFlightNewsApi;

  @GET('/articles')
  Future<List<Article>> getArticles();
}
