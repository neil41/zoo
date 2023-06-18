import 'package:flutter/material.dart';
import 'package:managethezoo/Featutes/user/u_ruond_featutes/Model/u_round_model.dart';
import 'package:qr_flutter/qr_flutter.dart';

class URound extends StatefulWidget {
  const URound({Key? key, required this.round, required this.time, required this.animal, required this.timeShow, required this.bhat, required this.room}) : super(key: key);
final String round ;
final String time ;
final String animal ;
final String timeShow ;
final String bhat ;
final String room ;

  @override
  State<URound> createState() => _URoundState();
}

class _URoundState extends State<URound> {
  bool genQe = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.room),
        ),
        body: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.shortestSide *0.02),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:  [
                    Text("${widget.round} \nเวลา ${widget.time} | ${widget.animal} เวลาโชว์ ${widget.timeShow}"),
                  ],
                ),
               SizedBox(height: MediaQuery.of(context).size.height *0.03,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: const [
                   Text("เลือกที่นั่งของคุณ"),
                 ],
               ),
               SizedBox(
                  height: MediaQuery.of(context).size.height * 0.38,
                  width: double.infinity,
                  child: GridView.builder(
                    itemCount: URoundModel.USeats.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 5),
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      backgroundColor:
                                      const Color.fromARGB(202, 213, 210, 210),
                                      padding: const EdgeInsets.all(9),
                                      elevation: 0),
                                  onPressed: () {
                                    URoundModel.USeats[index]['color'] == false
                                        ? URoundModel.USeats[index].update("color", (value) => true)
                                        : URoundModel.USeats[index].update("color", (value) => false);
                                    setState(() {
                                    });
                                  },
                                  child:  Icon(Icons.person,color:URoundModel.USeats[index]['color'] == false ? Colors.black : Colors.red )),
                              Text(
                                URoundModel.USeats[index]['round'],
                                style: const TextStyle(fontSize: 13),
                              )
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
                 Text("ที่นั่งละ ${widget.bhat} บาท"),
                ElevatedButton(onPressed: (){
                  genQe = true;
                  setState(() {});
                }, child: const Text('ชำระเงิน')),
               genQe ? qr(widget.bhat) : Container()
              ],),
          ),
        ),
      ),
    );
  }

  Column qr (String dataQR){
    return  Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      QrImageView(
        data: dataQR,
        size: MediaQuery.of(context).size.shortestSide *0.32,
        backgroundColor: Colors.white,
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height *0.05,
      ),
    ]);

  }

}
