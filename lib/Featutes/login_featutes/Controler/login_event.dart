part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class LoginEventLogin extends LoginEvent{
  final UserS user ;
  LoginEventLogin(this.user);

}
