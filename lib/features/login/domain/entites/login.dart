import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

import 'package:code_gen_example/features/login/data/models/login/login_model.dart';
part 'login.g.dart';

@CopyWith()
class Login extends Equatable {
  const Login({
    this.id,
    required this.name,
  });

  final int? id;
  final String name;

  factory Login.toEntity(LoginModel model) {
    return Login(
      id: model.id,
      name: model.name ?? '',
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
      ];
}
