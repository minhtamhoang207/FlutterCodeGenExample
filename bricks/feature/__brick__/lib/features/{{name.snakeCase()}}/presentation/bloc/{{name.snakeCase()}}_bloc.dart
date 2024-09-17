import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:code_gen_example/process.dart';

part '{{name.snakeCase()}}_bloc.g.dart';
part '{{name.snakeCase()}}_event.dart';
part '{{name.snakeCase()}}_state.dart';

@injectable
class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {

  {{name.pascalCase()}}Bloc() : super(const {{name.pascalCase()}}State()) {
    on<Init{{name.pascalCase()}}Event>(_onInit{{name.pascalCase()}}Event);
  }

  Future<void> _onInit{{name.pascalCase()}}Event(
    Init{{name.pascalCase()}}Event event,
    Emitter<{{name.pascalCase()}}State> emit,
  ) async {
    emit(state.copyWith(status: ProcessStatus.loading));
    final result = await Future.delayed(const Duration(seconds: 2));
    result.fold(
      (failure) {
        emit(state.copyWith(status: ProcessStatus.failure));
      },
      (result) {
        emit(state.copyWith(status: ProcessStatus.success, data: result));
      },
    );
  }
}
