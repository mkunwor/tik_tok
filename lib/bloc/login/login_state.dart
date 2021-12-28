part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {

}
class LoginLoading extends LoginState{
  String loadingMessage;
  LoginLoading({required this.loadingMessage});

}
class LoginSuccess extends LoginState{
  final dynamic data;
  LoginSuccess({this.data});

}
class LoginError extends LoginState{
  String loginErrorMessage;
  LoginError({required this.loginErrorMessage});

}