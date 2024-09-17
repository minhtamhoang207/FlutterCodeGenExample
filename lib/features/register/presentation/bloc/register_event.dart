part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable {}

class InitRegisterEvent extends RegisterEvent {
  final Object data;

  InitRegisterEvent({required this.data});

  @override
  List<Object?> get props => [data];
}