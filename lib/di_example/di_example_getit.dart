import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'di_example.dart';

class DependencyInjectionExample {
  static final GetIt getIt = GetIt.instance;

  static void setup() {
    getIt.registerSingleton(Dio());

    getIt.registerLazySingleton(
      () => SpaceFlightNewsApi(getIt<Dio>()),
    );

    getIt.registerLazySingleton(
      () => SpaceFlightNewsRepository(getIt<SpaceFlightNewsApi>()),
    );

    getIt.registerFactory(
      () => GetSpaceFlightNewsUseCase(getIt<SpaceFlightNewsRepository>()),
    );
  }
}

class BlocExample {
  final usecase = GetIt.instance<GetSpaceFlightNewsUseCase>();
}
