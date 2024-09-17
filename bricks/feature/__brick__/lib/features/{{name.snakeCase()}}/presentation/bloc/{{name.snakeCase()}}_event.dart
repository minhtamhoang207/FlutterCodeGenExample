part of '{{name.snakeCase()}}_bloc.dart';

abstract class {{name.pascalCase()}}Event extends Equatable {}

class Init{{name.pascalCase()}}Event extends {{name.pascalCase()}}Event {
  final Object data;

  Init{{name.pascalCase()}}Event({required this.data});

  @override
  List<Object?> get props => [data];
}