import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'register_api.g.dart';

@lazySingleton
@RestApi()
abstract class RegisterApi {
  @factoryMethod
  factory RegisterApi(Dio dio) = _RegisterApi;

  // @GET(EndpointConstants.endpoint)
  // Future<List<Model>> getSomething({
  //   @Query("page") required int page,
  //   @Query("limit") required int limit,
  // });
}
