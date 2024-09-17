import 'package:code_gen_example/di_example/di_example_injectable.config.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'di_example_injectable.g.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();

@lazySingleton
@RestApi()
abstract class SpaceFlightNewsApi {
  @factoryMethod
  factory SpaceFlightNewsApi(Dio dio) = _SpaceFlightNewsApi;
}

@lazySingleton
class SpaceFlightNewsRepository {
  const SpaceFlightNewsRepository(this._api);

  final SpaceFlightNewsApi _api;
}

@injectable
class GetSpaceFlightNewsUseCase {
  const GetSpaceFlightNewsUseCase(this._repository);

  final SpaceFlightNewsRepository _repository;
}

final usecase = getIt<GetSpaceFlightNewsUseCase>();
