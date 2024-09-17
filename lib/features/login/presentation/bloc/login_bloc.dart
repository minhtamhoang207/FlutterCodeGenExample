import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:code_gen_example/process.dart';

part 'login_bloc.g.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {

  LoginBloc() : super(const LoginState()) {
    on<InitLoginEvent>(_onInitLoginEvent);
  }

  Future<void> _onInitLoginEvent(
    InitLoginEvent event,
    Emitter<LoginState> emit,
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
