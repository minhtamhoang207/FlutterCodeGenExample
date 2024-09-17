import 'package:injectable/injectable.dart';

import 'package:code_gen_example/features/login/domain/repositories/login_repository.dart';

@LazySingleton(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  // LoginRepositoryImpl(this._loginApi);
  // final LoginApi _loginApi;

  // @override
  // Future<Either<dynamic, List<Login>>> getList({
  //   required int page,
  //   required int limit,
  // }) async {
  //   try {
  //     final res = await _loginApi.getLogins(page: page, limit: limit);
  //     return right(res.map((e) => Login.toEntity(e)).toList());
  //   } on DioException catch (exception) {
  //     return left(exception);
  //   }
  // }
}
