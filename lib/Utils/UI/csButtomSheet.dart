import 'dart:developer';

import 'package:flutter/material.dart';

class CusButTomSheet {
  sheeet({
    required BuildContext context,
    required String  title,
    Widget? textFiled_1,
    Widget? textFiled_2,
    Widget? textFiled_3,
    Widget? textFiled_4,
    required VoidCallback ok,
    VoidCallback? cancel,
    TextEditingController? textEditingController1,
    TextEditingController? textEditingController2,
    TextEditingController? textEditingController3,
    TextEditingController? textEditingController4,
    String? phatImage ,
    VoidCallback? addImage,
    VoidCallback? editImage
  }) {
    showModalBottomSheet(
     isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(MediaQuery.of(context).size.shortestSide *0.04),
                topLeft: Radius.circular(MediaQuery.of(context).size.shortestSide *0.04),
              ),
              color: Colors.white,
            ),
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  padding: EdgeInsets.only(

                      left: MediaQuery.of(context).size.width *0.03,
                      top: MediaQuery.of(context).size.height *0.03,
                      right: MediaQuery.of(context).size.width *0.03,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "ยกเลิก",
                            style:
                                TextStyle(color: Color.fromARGB(147, 0, 0, 0)),
                          )),
                      Text(title),
                      TextButton(
                          onPressed: ok ,
                          child: const Text(
                            "ตกลง",
                            style: TextStyle(
                              color: Color.fromARGB(255, 245, 7, 4),
                            ),
                          ))
                    ],
                  ),
                ),
                Divider(height: MediaQuery.of(context).size.height *0.02, color: Colors.black54),
                SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height *0.7,
                    padding: EdgeInsets.all(MediaQuery.of(context).size.shortestSide *0.05),
                    child: SingleChildScrollView(
                      child: Column(children: [
                  phatImage == null ? Container():   Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Card(
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage("https://travel.mthai.com/app/uploads/2019/04/Gyeongju-1.jpg"),
                                      fit: BoxFit.fill
                                  )
                                ),
                                width: MediaQuery.of(context).size.width *0.35,
                                height: MediaQuery.of(context).size.height *0.2,
                              ),
                            ),
                         addImage == null ? IconButton(onPressed: editImage, icon: const Icon(Icons.edit))
                                          : IconButton(onPressed: addImage, icon: const Icon(Icons.add_photo_alternate)),

                          ],
                        ),
                        textFiled_1 ??  Container() ,
                        textFiled_4 ??  Container(),
                        textFiled_2 ??  Container(),
                        textFiled_3 ??  Container(),
                        phatImage == null ? Container():  SizedBox(height: MediaQuery.of(context).size.height *0.7,)
                      ],),
                    ),
                  ),
                ),
              ],
            ),
          //  height: MediaQuery.of(context).size.height *9.2,
          );
        });
  }
}
