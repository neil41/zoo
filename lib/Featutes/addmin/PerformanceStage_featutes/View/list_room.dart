
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:managethezoo/Featutes/addmin/PerformanceStage_featutes/Controler/room_bloc.dart';
import 'package:managethezoo/Featutes/addmin/PerformanceStage_featutes/Models/room_model.dart';
import 'package:managethezoo/Shared_Components/Widget/form_email.dart';
import 'package:managethezoo/Utils/UI/Custom_Diarlog.dart';
import 'package:managethezoo/Utils/UI/csButtomSheet.dart';

class ListRoom extends StatefulWidget {
  const ListRoom({
    super.key,
  });

  @override
  State<ListRoom> createState() => _ListRoomState();
}

class _ListRoomState extends State<ListRoom> {


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomBloc, RoomState>(
  builder: (context, state) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.9,
      width: double.infinity,
      child: ListView.builder(
        itemCount: dataA.a.length,
        itemBuilder: (context, Lindex) {

          return Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.01),
          child: Stack(
            children: [
              GestureDetector(
                onTap: () {},
                child: Card(
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(children: [
                      Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://media.komchadluek.net/media/img/size1/2019/12/04/6hgjk85efdcc9bdh6h8cc.jpg?x-image-process=style/LG-webp")),
                          )),
                      Container(
                        padding:  EdgeInsets.all(MediaQuery.of(context).size.width *
                            0.015),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width:MediaQuery.of(context).size.width * 0.6,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(Icons.meeting_room_outlined),
                                          Text("${dataA.a[Lindex]['name']}"),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.chair,
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .shortestSide *
                                                0.05,
                                            color:
                                                const Color.fromARGB(255, 245, 7, 4),
                                          ),
                                          SizedBox(
                                            width: 180,
                                            child: Text(
                                              " ${dataA.a[Lindex]['seats']} ที่นั่ง",
                                              style: TextStyle( fontSize:
                                              MediaQuery.of(context)
                                                  .size
                                                  .shortestSide *
                                                  0.037),
                                              // overflow:
                                              // TextOverflow.ellipsis
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '฿',
                                            style: TextStyle(
                                              color:  const Color.fromARGB(255, 245, 7, 4),
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .shortestSide *
                                                    0.045),
                                          ),
                                          Text(" ${dataA.a[Lindex]['Baht']} บาท",
                                              style: TextStyle(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .shortestSide *
                                                          0.037)),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(7))),
                                  minimumSize: Size(
                                      90,
                                      MediaQuery.of(context).size.height *
                                          0.1),
                                  backgroundColor:
                                      const Color.fromARGB(255, 248, 219, 21),
                                ),
                                onPressed: () {
                                  TextEditingController monny = TextEditingController(text: dataA.a[Lindex]['Baht']  );
                                  TextEditingController chair = TextEditingController(text:dataA.a[Lindex]['seats']);
                                  TextEditingController name = TextEditingController(text:dataA.a[Lindex]['name']);

                                  CusButTomSheet()
                                      .sheeet(context: context,
                                    title: 'แก้ไขข้อมูล room ${dataA.a[Lindex]['name']}',
                                    ok: (){
                                      dataA.a[Lindex].update("seats", (value) => chair.text);
                                      dataA.a[Lindex].update("Baht", (value) => monny.text);
                                      dataA.a[Lindex].update("name", (value) => name.text);
                                      Navigator.pop(context);
                                      setState(() {});
                                    },
                                    textFiled_1: FormEmail(icon: const Icon(Icons.paste_outlined), controller: name, texterr: 'กรุณากรอกชื่อห้อง', hintText: '',),
                                    textFiled_3: FormEmail(icon: const Icon(Icons.monetization_on), controller: monny, texterr: 'กรุณากรอกราคา', hintText: '0',),
                                    textFiled_2: FormEmail(icon: const Icon(Icons.chair_alt_sharp), controller: chair, texterr: 'กรุณากรอกจำนวนที่นั่ง', hintText: '0',),
                                  );
                                },
                                child: const Text("แก้ไข")),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.87,
                  ),
                  child: IconButton(
                    onPressed: () {
                      CustomDiarlog().diarlog(
                        context: context,
                        title: "ลบห้องโชว์การแสดง",
                        content1: "${dataA.a[Lindex]['name']}",
                        content2:  null,
                        content3:  null,
                        ok: (){
                          dataA.a.removeAt(Lindex);
                          setState(() {
                          });
                          Navigator.pop(context);
                        },
                      );

                    },
                    icon: Icon(
                      Icons.delete,
                      color: const Color.fromARGB(255, 245, 7, 4),
                      size: MediaQuery.of(context).size.shortestSide * 0.097,
                    ),
                  ))
            ],
          ),
        );
        },
      ),
    );
  },
);

  }
}
