import 'package:flutter/material.dart';
import 'package:managethezoo/Config/Themes/SetThemeApps.dart';
import 'package:managethezoo/Shared_Components/Widget/form_email.dart';
import 'package:managethezoo/Utils/UI/csButtomSheet.dart';

class CusttomRoundControler {
  addTimeShow({required BuildContext context, required TextEditingController nameAnomal,
      required TextEditingController nameRoom, required TextEditingController time,
  required List<dynamic>  Adata,

  }) {
    CusButTomSheet().sheeet(
      ok: (){
        Adata.add({
          "Animal": nameAnomal.text,
          "room":nameRoom.text,
          "time":time.text,
        });
        navigatorState.currentState?.pop();
      },
      phatImage: null,
      textEditingController1:nameAnomal ,
      textEditingController2:nameRoom ,
      textEditingController3: time,
      context: context,
      title: "เพิ่มรอบเวลา",
      textFiled_1: FormEmail(
          icon: const Icon(Icons.adb),
          controller: nameAnomal,
          texterr: "กรอกชื่อสัตว์",
          hintText: "Tiger"),
      textFiled_2: FormEmail(
          icon: const Icon(Icons.meeting_room_rounded),
          controller: nameRoom,
          texterr: "กรอกชื่อห้อง",
          hintText: "Room 1"),
      textFiled_3: FormEmail(
          icon: Icon(Icons.access_time_outlined),
          controller: time,
          texterr: "กรอกเวลา",
          hintText: "10.00 Am"),
    );
  }

  editTimeShow({required BuildContext context, required TextEditingController editnameAnomal,
    required TextEditingController editnameRoom, required TextEditingController edittime,
    required int Lindex,
    required List<dynamic>  Adata
  }) {
    CusButTomSheet().sheeet(
      ok: (){
        Adata[Lindex].update("Animal", (value) => editnameAnomal.text);
        Adata[Lindex].update("room", (value) => editnameRoom.text);
        Adata[Lindex].update("time", (value) => edittime.text);
        navigatorState.currentState?.pop();
      },
      textEditingController1:editnameAnomal ,
      textEditingController2:editnameRoom ,
      textEditingController3: edittime,
      context: context,
      title: "เพิ่มรอบเวลา",
      textFiled_1: FormEmail(
          icon: const Icon(Icons.adb),
          controller: editnameAnomal,
          texterr: "กรอกชื่อสัตว์",
          hintText: "Tiger"),
      textFiled_2: FormEmail(
          icon: const Icon(Icons.meeting_room_rounded),
          controller: editnameRoom,
          texterr: "กรอกชื่อห้อง",
          hintText: "Room 1"),
      textFiled_3: FormEmail(
          icon: const Icon(Icons.access_time_outlined),
          controller: edittime,
          texterr: "กรอกเวลา",
          hintText: "10.00 Am"),
    );
  }


}
