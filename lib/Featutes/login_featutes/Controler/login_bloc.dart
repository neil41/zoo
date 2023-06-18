import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:managethezoo/Config/Routing/route.dart';
import 'package:managethezoo/Config/Themes/SetThemeApps.dart';
import 'package:managethezoo/Featutes/login_featutes/Models/users.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super( LoginState()) {

    on<LoginEventLogin>((event, emit) {
      if(event.user.username == "user" && event.user.plassword == "1234"){
        emit(state.copyWith(isAuthened: 2  ));
       emit(state.copyWith(Id_user: true));
       if(navigatorState.currentContext != null){
         Navigator.pushReplacementNamed(navigatorState.currentContext!, Routes.user);
       }
      }else if (event.user.username == "addmin" && event.user.plassword == "1234"){
        emit(state.copyWith(isAuthened:  2  ));
        emit(state.copyWith(Id_user: false));
        if(navigatorState.currentContext != null){
          Navigator.pushReplacementNamed(navigatorState.currentContext!, Routes.addmin);
        }

      }else if(event.user.username.isEmpty && event.user.plassword.isEmpty){
        emit(state.copyWith(isAuthened: 3  ));
      }else{
        emit(state.copyWith(isAuthened: 1  ));
      }


    });


  }
}
