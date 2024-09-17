import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

import 'package:code_gen_example/features/{{name.snakeCase()}}/data/models/{{name.snakeCase()}}/{{name.snakeCase()}}_model.dart';
part '{{name.snakeCase()}}.g.dart';

@CopyWith()
class {{name.pascalCase()}} extends Equatable {
  const {{name.pascalCase()}}({
    this.id,
    required this.name,
  });

  final int? id;
  final String name;

  factory {{name.pascalCase()}}.toEntity({{name.pascalCase()}}Model model) {
    return {{name.pascalCase()}}(
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
