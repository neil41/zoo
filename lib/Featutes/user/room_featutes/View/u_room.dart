import 'package:flutter/material.dart';
import 'package:managethezoo/Featutes/user/room_featutes/Model/uroom_model.dart';
import 'package:managethezoo/Featutes/user/room_featutes/View/Component/select_icon.dart';
class URoom extends StatefulWidget {
  const URoom({Key? key}) : super(key: key);
  @override
  State<URoom> createState() => _URoomState();
}

class _URoomState extends State<URoom> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8634,
      width: double.infinity,
      child: GridView.builder(
        itemCount:  URoomModel.u_room.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.all(
                MediaQuery.of(context).size.shortestSide * 0.023),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 15,
                  backgroundColor: Colors.white,
                  shadowColor: Colors.black54,
                  foregroundColor: Colors.grey,
                  disabledBackgroundColor: const Color.fromARGB(
                      202, 36, 164, 22),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    side: BorderSide(
                      width: 0.9,
                      color: Color.fromARGB(255, 5, 5, 5),
                    )
                  ),
                  // surfaceTintColor: Colors.orange
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SelectIcon(
                    aa: URoomModel.u_room[index]['type'],),));
                },
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03,
                      bottom: MediaQuery.of(context).size.height * 0.02),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border:
                            Border.all(color: Colors.black, width: 1.0),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://media.komchadluek.net/media/img/size1/2019/12/04/6hgjk85efdcc9bdh6h8cc.jpg?x-image-process=style/LG-webp"),
                                // : NetworkImage("testjason[index].imageProduct"),
                                fit: BoxFit.fill),
                          ),
                          height: MediaQuery.of(context).size.height * 0.2,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                           Text(
                            URoomModel.u_room[index]['name'],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(),
                          ),
                          Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                            children:  [
                              Text(
                                "ที่นั่ง ${URoomModel.u_room[index]['seats']} ที่",
                                style: TextStyle(
                                    //color: Colors.white,

                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children:  [
                              Text(
                                "ราคา ${URoomModel.u_room[index]['Baht']} /ที่นั่ง",
                                style: const TextStyle(
                                  //color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}
