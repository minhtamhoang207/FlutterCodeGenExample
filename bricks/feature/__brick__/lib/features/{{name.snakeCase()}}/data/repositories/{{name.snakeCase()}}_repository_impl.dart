import 'package:injectable/injectable.dart';

import 'package:code_gen_example/features/{{name.snakeCase()}}/domain/repositories/{{name.snakeCase()}}_repository.dart';

@LazySingleton(as: {{name.pascalCase()}}Repository)
class {{name.pascalCase()}}RepositoryImpl implements {{name.pascalCase()}}Repository {
  // {{name.pascalCase()}}RepositoryImpl(this._{{name.snakeCase()}}Api);
  // final {{name.pascalCase()}}Api _{{name.snakeCase()}}Api;

  // @override
  // Future<Either<dynamic, List<{{name.pascalCase()}}>>> getList({
  //   required int page,
  //   required int limit,
  // }) async {
  //   try {
  //     final res = await _{{name.snakeCase()}}Api.get{{name.pascalCase()}}s(page: page, limit: limit);
  //     return right(res.map((e) => {{name.pascalCase()}}.toEntity(e)).toList());
  //   } on DioException catch (exception) {
  //     return left(exception);
  //   }
  // }
}
