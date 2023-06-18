import 'package:flutter/material.dart';

class CustomDiarlog {
  diarlog(
      {
    required BuildContext context,
    required String title,
    required String content1,
    required String? content2,
    required String? content3,
    required VoidCallback ok}
) {
    showDialog(
      context: context,
      builder: (context) => Center(
        child: SingleChildScrollView(
          child: AlertDialog(
            title:  Text(title),
            content: Column(
              children: [
                Text("คุณยืนที่จะลบ ${content1} ?",),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:
                [
                  content2 == null ? Container() :SizedBox(height: MediaQuery.of(context).size.height *0.08,),
                  content2 == null ? Container() :Text("${content2}  ",),
                  content3 == null ? Container() :Text("${content3} ",),
                ],)

              ],
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: ok,
                      child: const Text("ยืนยัน")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        //   padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("ยกเลิก")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
