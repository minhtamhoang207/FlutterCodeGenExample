part of 'login_bloc.dart';

@CopyWith()
class LoginState extends Equatable {
  final Object? data;
  final ProcessStatus status;

  const LoginState({
    this.data,
    this.status = ProcessStatus.initial,
  });

  @override
  List<Object?> get props => [
        data,
        status,
      ];
}