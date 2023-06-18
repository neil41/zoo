import 'package:flutter/material.dart';
import 'package:managethezoo/Config/Themes/SetThemeApps.dart';
import 'package:managethezoo/Shared_Components/Widget/form_email.dart';
import 'package:managethezoo/Utils/UI/csButtomSheet.dart';

class CusttomAninmalControler {
  addTimeShow({required BuildContext context, required TextEditingController nameAnomal,
      required TextEditingController type,
      required TextEditingController sprcies,
    required TextEditingController time,
  required List<dynamic>  Adata,
    required VoidCallback ok

  }) {
    CusButTomSheet().sheeet(
      ok: ok,
      phatImage: "add phat",
      addImage: (){},
      textEditingController1:nameAnomal ,
      textEditingController2:type ,
      textEditingController3: time,
      textEditingController4: sprcies,
      context: context,
      title: "เพิ่มสัตว์",
      textFiled_1: FormEmail(
          icon: const Icon(Icons.adb),
          controller: nameAnomal,
          texterr: "กรอกชื่อสัตว์",
          hintText: "Tiger"),
      textFiled_4: FormEmail(
          icon: const Icon(Icons.spoke_rounded),
          controller: sprcies,
          texterr: "ระบุชนิด",
          hintText: "Species"),
      textFiled_2: FormEmail(
          icon: const Icon(Icons.type_specimen_outlined),
          controller: type,
          texterr: "ระบุชนิด",
          hintText: "Type"),
      textFiled_3: FormEmail(
          icon: Icon(Icons.access_time_outlined),
          controller: time,
          texterr: "กรอกเวลา",
          hintText: "20 minutes"),
    );
  }

  editTimeShow({required BuildContext context, required TextEditingController editnameAnomal,
    required TextEditingController editnameRoom,
    required TextEditingController Species,
    required TextEditingController edittime,
    required int Lindex,
    required List<dynamic>  Adata
  }) {
    CusButTomSheet().sheeet(
      ok: (){
        Adata[Lindex].update("Animal", (value) => editnameAnomal.text);
        Adata[Lindex].update("Species", (value) => Species.text);
        Adata[Lindex].update("type", (value) => editnameRoom.text);
        Adata[Lindex].update("Show_duration", (value) => edittime.text);
        navigatorState.currentState?.pop();
      },
      phatImage: "add phat",
      editImage: (){},
      textEditingController1:editnameAnomal ,
      textEditingController2:editnameRoom ,
      textEditingController4:Species ,
      textEditingController3: edittime,
      context: context,
      title: "แก้ไขสัตว์",
      textFiled_1: FormEmail(
          icon: const Icon(Icons.adb),
          controller: editnameAnomal,
          texterr: "กรอกชื่อสัตว์",
          hintText: "Tiger"),
      textFiled_2: FormEmail(
          icon: const Icon(Icons.type_specimen_outlined),
          controller: editnameRoom,
          texterr: "กรอกชื่อห้อง",
          hintText: "Room 1"),
      textFiled_3: FormEmail(
          icon: const Icon(Icons.access_time_outlined),
          controller: edittime,
          texterr: "กรอกเวลา",
          hintText: "10.00 Am"),
      textFiled_4: FormEmail(
          icon: const Icon(Icons.spoke_rounded),
          controller: Species,
          texterr: "กรอกเวลา",
          hintText: "10.00 Am"),
    );
  }


}
