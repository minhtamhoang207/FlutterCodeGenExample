import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

import 'package:code_gen_example/features/register/data/models/register/register_model.dart';
part 'register.g.dart';

@CopyWith()
class Register extends Equatable {
  const Register({
    this.id,
    required this.name,
  });

  final int? id;
  final String name;

  factory Register.toEntity(RegisterModel model) {
    return Register(
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
