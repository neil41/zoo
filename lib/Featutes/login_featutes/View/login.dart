import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:managethezoo/Constants/assetImage.dart';
import 'package:managethezoo/Featutes/login_featutes/Controler/login_bloc.dart';
import 'package:managethezoo/Featutes/login_featutes/Models/users.dart';
import 'package:managethezoo/Featutes/login_featutes/View/component/button_login.dart';
import 'package:managethezoo/Shared_Components/Widget/form_email.dart';

class Login extends StatefulWidget {
  const Login({
    super.key,
  });

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController Controllerusername = TextEditingController();
  TextEditingController Controllerpass = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool empty = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(AssetImages.backgroundLogin3),
          fit: BoxFit.fill,
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black12,
                  Colors.black12,
                ])),
        child: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.15,),
                        Text("ZOO CITY",
                          style:
                          GoogleFonts.zenTokyoZoo(
                              color: const Color.fromARGB(
                                  255, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                              shadows: [
                                const BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(
                                    1.0,
                                    1.0,
                                  ),
                                  blurRadius: 20.0,
                                  spreadRadius: 20.0,
                                )
                              ],
                              fontSize: MediaQuery
                                  .of(context)
                                  .size
                                  .shortestSide * 0.13
                          ),),
                        SizedBox(height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.02,),
                        BlocBuilder<LoginBloc, LoginState>(
                          builder: (context, state) {
                            return  empty ? Container()
                            :state.isAuthened == 1 ? Column(
                              children: [
                                Text(
                                  "${state.isAuthened == 1 ? "กรุณาใส่รหัสให้ถูกต้อง":"success"}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 245, 7, 4),
                                    fontSize:  MediaQuery
                                        .of(context)
                                        .size
                                        .shortestSide * 0.06
                                  ),
                                  maxLines: 2,
                                ),
                                Text(
                                  "${state.isAuthened == 1 ? "id : user หรือ addmin \n prassword : 1234":"success"}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(255, 245, 7, 4),
                                      fontSize:  MediaQuery
                                          .of(context)
                                          .size
                                          .shortestSide * 0.04
                                  ),
                                  maxLines: 2,
                                )
                              ],
                            ):SizedBox();
                          },
                        ),
                        Container(
                          padding: EdgeInsets.all(
                              MediaQuery
                                  .of(context)
                                  .size
                                  .shortestSide * 0.02),
                          margin: EdgeInsets.only(
                            bottom: MediaQuery
                                .of(context)
                                .size
                                .height * 0.1,
                          ),
                          //  height: MediaQuery.of(context).size.height * 0.44,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.69,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(
                                  5.0)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black45,
                                  offset: Offset(
                                    1.0,
                                    1.0,
                                  ),
                                  blurRadius: 2.0,
                                  spreadRadius: 1.0,
                                ), //
                              ],
                              color: Colors.white30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Form(
                                key: _formkey,
                                child: Column(
                                  children: [
                                    FormEmail(
                                      icon: const Icon(Icons.mail_outline),
                                      controller: Controllerusername,
                                      texterr: 'กรุณากรอก user หรือ addmin เพื่อ login',
                                      hintText: 'input"user" OR "addmin"',

                                    ),
                                    FormEmail(
                                      icon: const Icon(Icons.password),
                                      controller: Controllerpass,
                                      texterr: 'กรุณากรอกรหัสผ่าน 1234',
                                      hintText: '1234',
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.035,),
                              ButtonLogin(onpress: () {
                                log("::::::::::::::::::::::::::::::::::::${_formkey.currentState!.validate()}");
                                log("111111:${Controllerusername.text}");
                                log("2222222:::${Controllerpass.text}");
                                if (_formkey.currentState!.validate()) {
                                  final userrr = UserS(
                                      username: Controllerusername.text,
                                      plassword: Controllerpass.text);
                                  context.read<LoginBloc>().add(
                                      LoginEventLogin(userrr));
                                }
                              },)

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}


