import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:managethezoo/Config/Routing/route.dart';
import 'package:managethezoo/Featutes/addmin/PerformanceStage_featutes/Controler/room_bloc.dart';
import 'package:managethezoo/Featutes/login_featutes/Controler/login_bloc.dart';
import 'package:managethezoo/Featutes/login_featutes/View/login.dart';


final navigatorState = GlobalKey<NavigatorState>();

class SetThemesApp extends StatelessWidget {
  const SetThemesApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final loginBloc = BlocProvider<LoginBloc>(create: (create)=> LoginBloc() );
    final room = BlocProvider<RoomBloc>(create: (create)=> RoomBloc() );
    return MultiBlocProvider(
     providers: [
       loginBloc,
       room
     ],
      child: MaterialApp(
        routes: Routes.all,
        navigatorKey: navigatorState,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: const Login(),
        theme: ThemeData.from(colorScheme: const ColorScheme.light()).copyWith(
          textTheme: GoogleFonts.promptTextTheme(),
          appBarTheme: const AppBarTheme(color: Colors.blueAccent),
          //  textButtonTheme: TextButtonThemeData(style: ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith(
                        (states) =>
                    const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        side: BorderSide(
                          width: 1.0,
                          color: Color.fromARGB(
                              255, 33, 87, 0),
                        )),
                  ),
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                        (states) => Colors.deepOrangeAccent[200],
                  ))),
          //  outlinedButtonTheme: OutlinedButtonThemeData(style: outlineButtonStyle),
        ),
      ),
    );
  }
}

