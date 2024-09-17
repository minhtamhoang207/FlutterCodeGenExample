part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {}

class InitLoginEvent extends LoginEvent {
  final Object data;

  InitLoginEvent({required this.data});

  @override
  List<Object?> get props => [data];
}