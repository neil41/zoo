import 'package:flutter/material.dart';
import 'package:managethezoo/Config/Themes/SetThemeApps.dart';
import 'package:managethezoo/Featutes/addmin/animal_featutes/Model/animal_model.dart';
import 'package:managethezoo/Shared_Components/Widget/form_email.dart';
import 'package:managethezoo/Utils/UI/Custom_Diarlog.dart';
import 'package:managethezoo/Utils/UI/csButtomSheet.dart';

class AddAndDelete extends StatefulWidget {
  const AddAndDelete({
    super.key,
  });

  @override
  State<AddAndDelete> createState() => _AddAndDeleteState();
}

class _AddAndDeleteState extends State<AddAndDelete> {
  TextEditingController nameAnimal = TextEditingController();
  TextEditingController Species = TextEditingController();
  TextEditingController typy = TextEditingController();
  TextEditingController Show_duration = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: const Color.fromARGB(255, 1, 19, 44)),
              onPressed: () {
                add();
              },
              child: Row(
                children: const [
                  Icon(Icons.add),
                  Text("เพิ่มสัตว์"),
                ],
              )),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.799,
          width: double.infinity,
          child: GridView.builder(
            itemCount: Animal.data.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.shortestSide * 0.023),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 5,
                          backgroundColor: Colors.white,
                          shadowColor: Colors.black54,
                          foregroundColor: Colors.grey,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              side: BorderSide(
                                width: 0.9,
                                color: Color.fromARGB(255, 5, 5, 5),
                              )),
                          // surfaceTintColor: Colors.orange
                        ),
                        onPressed: () {
                          edit(index);
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.03,
                              bottom:
                                  MediaQuery.of(context).size.height * 0.02),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 1.0),
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            "https://www.seub.or.th/seubweb/wp-content/uploads/2020/03/%E0%B8%AB%E0%B8%99%E0%B9%89%E0%B8%B2%E0%B8%9B%E0%B8%81%E0%B9%80%E0%B8%A7%E0%B9%87%E0%B8%9A-2-2.jpg"),
                                        // : NetworkImage("testjason[index].imageProduct"),
                                        fit: BoxFit.fill),
                                  ),
                                  height: MediaQuery.of(context).size.height *
                                      0.2,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    Animal.data[index]['Animal'],
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "ชนิด : ${Animal.data[index]['Species']}",
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .shortestSide *
                                                0.035),
                                      ),
                                      Text(
                                        "สายพันธุ์ : ${Animal.data[index]['type']}",
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .shortestSide *
                                                0.035),
                                      ),
                                      Text(
                                        "เวบาโชว์ : ${Animal.data[index]['Show_duration']}",
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .shortestSide *
                                                0.035),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.125,
                      margin: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height * 0.25,
                          left: MediaQuery.of(context).size.width * 0.35),
                      child: ElevatedButton(
                        onPressed: () {
                          delete(index);
                        },
                        child: const Text(
                          "ลบ",
                          style: TextStyle(fontSize: 10),
                        ),
                      ))
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  void edit(int index) {
    TextEditingController nameAnimal =
        TextEditingController(text: Animal.data[index]['Animal']);
    TextEditingController Species =
        TextEditingController(text: Animal.data[index]['Species']);
    TextEditingController typy =
        TextEditingController(text: Animal.data[index]['type']);
    TextEditingController Show_duration =
        TextEditingController(text: Animal.data[index]['Show_duration']);
    CusButTomSheet().sheeet(
      ok: () {
        Animal.data[index].update("Animal", (value) => nameAnimal.text);
        Animal.data[index].update("Species", (value) => Species.text);
        Animal.data[index].update("type", (value) => typy.text);
        Animal.data[index]
            .update("Show_duration", (value) => Show_duration.text);
        navigatorState.currentState?.pop();
        setState(() {});
      },
      phatImage: "add phat",
      editImage: () {},
      textEditingController1: nameAnimal,
      textEditingController2: typy,
      textEditingController4: Species,
      textEditingController3: Show_duration,
      context: context,
      title: "แก้ไขสัตว์",
      textFiled_1: FormEmail(
          icon: const Icon(Icons.adb),
          controller: nameAnimal,
          texterr: "กรอกชื่อสัตว์",
          hintText: "Tiger"),
      textFiled_2: FormEmail(
          icon: const Icon(Icons.type_specimen_outlined),
          controller: typy,
          texterr: "กรอกชื่อห้อง",
          hintText: "Room 1"),
      textFiled_3: FormEmail(
          icon: const Icon(Icons.access_time_outlined),
          controller: Show_duration,
          texterr: "กรอกเวลา",
          hintText: "10.00 Am"),
      textFiled_4: FormEmail(
          icon: const Icon(Icons.spoke_rounded),
          controller: Species,
          texterr: "กรอกเวลา",
          hintText: "10.00 Am"),
    );
  }

  void delete(int index) {
    CustomDiarlog().diarlog(
        context: context,
        title: "ลบสัตว์",
        content1: Animal.data[index]['Animal'],
        content2: null,
        content3: null,
        ok: () {
          Animal.data.removeAt(index);
          setState(() {});
          Navigator.pop(context);
        });
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
          icon: const Icon(Icons.access_time_outlined),
          controller: Show_duration,
          texterr: "กรอกเวลา",
          hintText: "20 minutes"),
    );
  }


}
