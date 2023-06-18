import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    super.key, required this.onpress,
  });
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 30,
      //  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.0),
      padding: const EdgeInsets.only(right: 5),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            //  shape: const StadiumBorder(),
            minimumSize: const Size(110, 40),
            backgroundColor:  Color.fromARGB(
                255, 78, 164, 11),
          ),
          onPressed: onpress,
          child: const Text("Login")),
    );
  }
}
