
import 'package:flutter/material.dart';
import 'package:managethezoo/Config/Themes/SetThemeApps.dart';
import 'package:managethezoo/Featutes/addmin/animal_featutes/Model/animal_model.dart';
import 'package:managethezoo/Shared_Components/Widget/form_email.dart';
import 'package:managethezoo/Utils/UI/csButtomSheet.dart';

class ButtonAddAnimal extends StatefulWidget {
  const ButtonAddAnimal({
    super.key,
  });

  @override
  State<ButtonAddAnimal> createState() => _ButtonAddAnimalState();
}

class _ButtonAddAnimalState extends State<ButtonAddAnimal> {
  TextEditingController nameAnimal = TextEditingController();
  TextEditingController Species = TextEditingController();
  TextEditingController typy = TextEditingController();
  TextEditingController Show_duration = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              backgroundColor: const Color.fromARGB(255, 1, 19, 44)),
          onPressed: () {
            add();
          },
          child: const Row(
            children: [
              Icon(Icons.add),
              Text("เพิ่มสัตว์"),
            ],
          )),
    );
  }

  void add() {

    CusButTomSheet().sheeet(
      ok: (){
        Animal.data.add({
          "Animal": nameAnimal.text,
          "Species": Species.text,
          "type":typy.text,
          "Show_duration":Show_duration.text,
        });
        navigatorState.currentState?.pop();
        setState(() {});
      },
      phatImage: "add phat",
      addImage: (){},
      textEditingController1:nameAnimal ,
      textEditingController2:typy ,
      textEditingController3: Show_duration,
      textEditingController4: Species,
      context: context,
      title: "เพิ่มสัตว์",
      textFiled_1: FormEmail(
          icon: const Icon(Icons.adb),
          controller: nameAnimal,
          texterr: "กรอกชื่อสัตว์",
          hintText: "Tiger"),
      textFiled_4: FormEmail(
          icon: const Icon(Icons.spoke_rounded),
          controller: Species,
          texterr: "ระบุชนิด",
          hintText: "Species"),
      textFiled_2: FormEmail(
          icon: const Icon(Icons.type_specimen_outlined),
          controller: typy,
          texterr: "ระบุชนิด",
          hintText: "Type"),
      textFiled_3: FormEmail(
          icon: Icon(Icons.access_time_outlined),
          controller: Show_duration,
          texterr: "กรอกเวลา",
          hintText: "20 minutes"),
    );
  }
}