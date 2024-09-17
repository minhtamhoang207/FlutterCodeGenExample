import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'di_example.g.dart';

@RestApi()
abstract class SpaceFlightNewsApi {
  factory SpaceFlightNewsApi(Dio dio) = _SpaceFlightNewsApi;
}

class SpaceFlightNewsRepository {
  const SpaceFlightNewsRepository(this._api);

  final SpaceFlightNewsApi _api;
}

class GetSpaceFlightNewsUseCase {
  const GetSpaceFlightNewsUseCase(this._repository);

  final SpaceFlightNewsRepository _repository;
}

final dio = Dio();
final usecase = GetSpaceFlightNewsUseCase(
  SpaceFlightNewsRepository(
    SpaceFlightNewsApi(dio),
  ),
);
