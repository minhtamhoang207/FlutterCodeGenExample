import 'package:injectable/injectable.dart';

import 'package:code_gen_example/features/register/domain/repositories/register_repository.dart';

@LazySingleton(as: RegisterRepository)
class RegisterRepositoryImpl implements RegisterRepository {
  // RegisterRepositoryImpl(this._registerApi);
  // final RegisterApi _registerApi;

  // @override
  // Future<Either<dynamic, List<Register>>> getList({
  //   required int page,
  //   required int limit,
  // }) async {
  //   try {
  //     final res = await _registerApi.getRegisters(page: page, limit: limit);
  //     return right(res.map((e) => Register.toEntity(e)).toList());
  //   } on DioException catch (exception) {
  //     return left(exception);
  //   }
  // }
}
