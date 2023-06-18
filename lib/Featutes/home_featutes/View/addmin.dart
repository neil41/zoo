import 'package:flutter/material.dart';
import 'package:managethezoo/Config/Routing/route.dart';
import 'package:managethezoo/Config/Themes/SetThemeApps.dart';
import 'package:managethezoo/Featutes/addmin/PerformanceStage_featutes/View/list_room.dart';
import 'package:managethezoo/Featutes/addmin/animal_featutes/View/Annimal.dart';
import 'package:managethezoo/Featutes/addmin/manage_Round_toshow_featutes/View/manage_Round.dart';
import 'package:managethezoo/Featutes/addmin/scanner_featutes/View/scanner.dart';
import 'package:managethezoo/Shared_Components/Widget/form_email.dart';
import 'package:managethezoo/Utils/UI/csButtomSheet.dart';

import '../../addmin/PerformanceStage_featutes/Models/room_model.dart';

class AddMinSceen extends StatefulWidget {
  const AddMinSceen({Key? key}) : super(key: key);

  @override
  State<AddMinSceen> createState() => _AddMinSceenState();
}

class _AddMinSceenState extends State<AddMinSceen> {
  int item_inbody = 1;
TextEditingController monny = TextEditingController();
TextEditingController chair = TextEditingController();
TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: buildDrawer(context),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 49, 208, 78),
          actions: [
            item_inbody == 1
                ? IconButton(
                    onPressed: () {
                      CusButTomSheet()
                          .sheeet(context: context,
                          ok: () {
                            dataA.a.add({
                              "name": name.text,
                              "seats":monny.text,
                              "Baht":chair.text,
                            });
                            setState(() {});
                            Navigator.pop(context);
                          },
                          title: 'เพิ่มห้องใหม่',
                          textFiled_1:FormEmail(icon: const Icon(Icons.paste), controller: monny, texterr: 'กรุณากรอกชื่อ', hintText: 'ชื่อห้อง',),

                          textFiled_3:  FormEmail(icon: const Icon(Icons.chair_alt_sharp), controller: chair, texterr: 'กรุณากรอกจำนวนที่นั่ง', hintText: '0',),

                          textFiled_2: FormEmail(icon: const Icon(Icons.monetization_on), controller: monny, texterr: 'กรุณากรอกราคา', hintText: '0',),

                      );
                      //  context.read<RoomBloc>().add(RoomEventRoom(Rooms(seats: "aaa", Baht: "bbb")));
                    },
                    icon: const Icon(Icons.add))
                : const SizedBox(),
          ],
          title: Text(item_inbody == 1
              ? "จัดการห้อง"
              : item_inbody == 2
                  ? "จัดการรอบโชว์"
                  : item_inbody == 3
                      ? "จัดการข้อมูลสัต"
                      : item_inbody == 4
                          ? "สแกน QR"
                          : 'ไม่มีข้อมูล')),

      body: item_inbody == 1 ? const ListRoom()
          : item_inbody == 2 ? const Round()
          : item_inbody == 3 ? const MagAnimal()
          : item_inbody == 4 ? const Scanner()
          : const Text("ไม่มีข้อมูล")
    ));
  }

  Container Item_in_Drawer(
      BuildContext context, Icon Ficon, String name, VoidCallback ontap,
      {Icon? L_icon, Color? color}) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20)),
              // side: BorderSide(
              //   width: 0.9,
              //   color: Color.fromARGB(255, 5, 5, 5),
              // )
            ),
          ),
          onPressed: ontap,
          child: Row(
            children: [
              Ficon,
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Text(name, style: TextStyle(color: Colors.blue[700])),
            ],
          ),
        ));
  }

  Drawer buildDrawer(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.65,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        DrawerHeader(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://xn--72czjvzci0ftdsfvb.com/images/2023/04/02/xn--72czjvzci0ftdsfvb.com_cad9a8911731d61fec90b5930f6a7568.png",
                height: MediaQuery.of(context).size.height *0.1,
              ),
              const Text("ADDMIN")
            ],
          ),
        ),
        const Divider(height: 3, color: Colors.black54),
        Container(
          padding:
              EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.09),
          width: MediaQuery.of(context).size.width * 0.65,
          height: MediaQuery.of(context).size.height * 0.668,
          //  color: Colors.blue,
          child: ListView(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Item_in_Drawer(
                      color: item_inbody == 1 ? Colors.blue[200] : Colors.white,
                      context,
                      const Icon(Icons.meeting_room_outlined,
                          color: Colors.blue),
                      "จัดการห้อง", () {
                    item_inbody = 1;
                    setState(() {});
                    Navigator.pop(context);
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Myproduct(),));
                  }),
                  Item_in_Drawer(
                      color: item_inbody == 2 ? Colors.blue[200] : Colors.white,
                      context,
                      const Icon(Icons.border_all, color: Colors.blue),
                      "จัดการรอบโชว์", () {
                    item_inbody = 2;
                    setState(() {});
                    Navigator.pop(context);
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Myproduct(),));
                  }),
                  Item_in_Drawer(
                      color: item_inbody == 3 ? Colors.blue[200] : Colors.white,
                      context,
                      const Icon(Icons.android_sharp, color: Colors.blue),
                      "จัดการข้อมูลสัต", () {
                    item_inbody = 3;
                    setState(() {});
                    Navigator.pop(context);
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Myproduct(),));
                  }),
                  Item_in_Drawer(
                    color: item_inbody == 4 ? Colors.blue[200] : Colors.white,
                    context,
                    const Icon(
                      Icons.qr_code_scanner,
                      color: Colors.blue,
                    ),
                    "สแกน QR",
                    () {
                      item_inbody = 4;
                      setState(() {});
                      Navigator.pop(context);
                    },
                  ),
                ]),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Divider(height: 3, color: Colors.black54),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Item_in_Drawer(
                          context,
                          Icon(
                            Icons.output_outlined,
                            color: Colors.blue[700],
                          ),
                          "ออกจากระบบ", () {
                        if (navigatorState.currentContext != null) {
                          Navigator.pushReplacementNamed(
                              navigatorState.currentContext!, Routes.login);
                        }
                      })
                    ],
                  ),
                )
              ],
            ),
          ]),
        ),
      ]),
    );
  }
}
