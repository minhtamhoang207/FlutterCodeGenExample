import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'login_api.g.dart';

@lazySingleton
@RestApi()
abstract class LoginApi {
  @factoryMethod
  factory LoginApi(Dio dio) = _LoginApi;

  // @GET(EndpointConstants.endpoint)
  // Future<List<Model>> getSomething({
  //   @Query("page") required int page,
  //   @Query("limit") required int limit,
  // });
}
