import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:code_gen_example/process.dart';

part 'register_bloc.g.dart';
part 'register_event.dart';
part 'register_state.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {

  RegisterBloc() : super(const RegisterState()) {
    on<InitRegisterEvent>(_onInitRegisterEvent);
  }

  Future<void> _onInitRegisterEvent(
    InitRegisterEvent event,
    Emitter<RegisterState> emit,
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
