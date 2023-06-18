import 'package:flutter/material.dart';
import 'package:managethezoo/Featutes/home_featutes/View/addmin.dart';
import 'package:managethezoo/Featutes/home_featutes/View/usersceen.dart';
import 'package:managethezoo/Featutes/login_featutes/View/login.dart';


class Routes {
  static const user = 'user';
  static const addmin = 'addmin';
  static const login = 'login';

  static get all => <String,WidgetBuilder>{
    user : (context) => const UserSceen(),
    addmin : (context) => const AddMinSceen(),
    login : (context) => const Login(),
  };
}

