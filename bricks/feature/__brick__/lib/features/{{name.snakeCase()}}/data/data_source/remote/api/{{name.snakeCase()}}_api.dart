import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part '{{name.snakeCase()}}_api.g.dart';

@lazySingleton
@RestApi()
abstract class {{name.pascalCase()}}Api {
  @factoryMethod
  factory {{name.pascalCase()}}Api(Dio dio) = _{{name.pascalCase()}}Api;

  // @GET(EndpointConstants.endpoint)
  // Future<List<Model>> getSomething({
  //   @Query("page") required int page,
  //   @Query("limit") required int limit,
  // });
}
