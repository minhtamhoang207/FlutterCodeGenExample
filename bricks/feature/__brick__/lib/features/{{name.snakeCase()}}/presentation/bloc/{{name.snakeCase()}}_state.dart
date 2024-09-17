part of '{{name.snakeCase()}}_bloc.dart';

@CopyWith()
class {{name.pascalCase()}}State extends Equatable {
  final Object? data;
  final ProcessStatus status;

  const {{name.pascalCase()}}State({
    this.data,
    this.status = ProcessStatus.initial,
  });

  @override
  List<Object?> get props => [
        data,
        status,
      ];
}