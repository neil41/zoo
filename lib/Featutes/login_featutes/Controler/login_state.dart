part of 'login_bloc.dart';

 class LoginState extends Equatable {
  const LoginState({this.Id_user = true, this.isAuthened = 0});
  final bool Id_user;
  final int isAuthened;

  LoginState copyWith({
    bool? Id_user,
    int? isAuthened,
  }){
    return LoginState(Id_user: Id_user ?? this.Id_user, isAuthened: isAuthened ?? this.isAuthened);
  }

  @override
  List<Object> get props => [Id_user,isAuthened];
}



