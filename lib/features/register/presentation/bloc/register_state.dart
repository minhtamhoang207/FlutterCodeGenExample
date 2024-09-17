part of 'register_bloc.dart';

@CopyWith()
class RegisterState extends Equatable {
  final Object? data;
  final ProcessStatus status;

  const RegisterState({
    this.data,
    this.status = ProcessStatus.initial,
  });

  @override
  List<Object?> get props => [
        data,
        status,
      ];
}