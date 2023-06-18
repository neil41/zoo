
import 'package:flutter/material.dart';
import 'package:managethezoo/Config/Routing/route.dart';
import 'package:managethezoo/Config/Themes/SetThemeApps.dart';
import 'package:managethezoo/Featutes/user/listofanimals_featutes/View/ListOfAnimals.dart';
import 'package:managethezoo/Featutes/user/room_featutes/View/u_room.dart';
import 'package:managethezoo/Featutes/user/u_ruond_featutes/View/u_select_round.dart';

class UserSceen extends StatefulWidget {
  const UserSceen({Key? key}) : super(key: key);

  @override
  State<UserSceen> createState() => _UserSceenState();
}

class _UserSceenState extends State<UserSceen> {
  int item_inbody = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: buildDrawer(context),
      appBar: AppBar(
        title: item_inbody == 1 ? Text('ราชื่อสัตว์')
              :item_inbody == 2 ? Text('ห้อง')
              :item_inbody == 3 ? Text('รอบการแสดง')
              : Text('ไม่มีข้อมูล')
      ),
      body: item_inbody == 1
          ? const ListOfAnimals()
          : item_inbody == 2
              ? URoom()
              : item_inbody == 3
          ? const SelectRound()
     : const Text("No DATA"),
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
                "https://storage.googleapis.com/fastwork-static/79e9c1b7-8d32-4c8f-8067-68d479c97c40.jpg",
                height: MediaQuery.of(context).size.height *0.1,
              ),
              const Text("USER")
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
                      const Icon(Icons.adb, color: Colors.blue),
                      "รายชื่อสัตว์", () {
                    item_inbody = 1;
                    setState(() {});
                    Navigator.pop(context);
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Myproduct(),));
                  }),
                  Item_in_Drawer(
                      color: item_inbody == 2 ? Colors.blue[200] : Colors.white,
                      context,
                      const Icon(Icons.meeting_room_outlined,
                          color: Colors.blue),
                      "ห้อง", () {
                    item_inbody = 2;
                    setState(() {});
                    Navigator.pop(context);
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Myproduct(),));
                  }),
                  Item_in_Drawer(
                      color: item_inbody == 3 ? Colors.blue[200] : Colors.white,
                      context,
                      const Icon(Icons.border_all, color: Colors.blue),
                      "รอบการแสดง", () {
                    item_inbody = 3;
                    setState(() {});
                    Navigator.pop(context);
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Myproduct(),));
                  }),
                ]),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.3),
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
