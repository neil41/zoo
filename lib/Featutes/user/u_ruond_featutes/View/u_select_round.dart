import 'package:flutter/material.dart';
import 'package:managethezoo/Featutes/user/u_ruond_featutes/Model/u_round_model.dart';
import 'package:managethezoo/Featutes/user/u_ruond_featutes/View/u_round.dart';

class SelectRound extends StatefulWidget {
  const SelectRound({Key? key}) : super(key: key);

  @override
  State<SelectRound> createState() => _SelectRoundState();
}

class _SelectRoundState extends State<SelectRound> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.builder(
        itemCount: URoundModel.URound.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int Findex) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(
                    left: MediaQuery.of(context).size.width *0.02,
                    right: MediaQuery.of(context).size.width *0.02
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width *0.4,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape:  const StadiumBorder(),
                              backgroundColor: const Color.fromARGB(255, 1, 19, 44)
                              ,disabledBackgroundColor: const Color.fromARGB(255, 1, 19, 44)
                          ),

                          onPressed: null,
                          child: Row(
                            children:  [
                              Text(URoundModel.URound[Findex]['name'],style: TextStyle(color: Colors.white)),
                            ],)),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width *0.33,),
                    Text(URoundModel.URound[Findex]['next'])
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.7829,
                width: MediaQuery.of(context).size.width * 1.0,
                color: Colors.green,
                child: ListView.builder(
                  itemCount: URoundModel.URound[Findex]['round'].length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width *0.015,
                          right: MediaQuery.of(context).size.width *0.015,
                          bottom: MediaQuery.of(context).size.height * 0.015),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ), onPressed:() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => URound(
                            round: URoundModel.URound[Findex]['name'],
                            time: URoundModel.URound[Findex]['round'][index]['time'],
                            animal: URoundModel.URound[Findex]['round'][index]['Animal'],
                            timeShow: URoundModel.URound[Findex]['round'][index]['Show_duration'],
                            bhat: URoundModel.URound[Findex]['round'][index]['Baht'],
                            room: URoundModel.URound[Findex]['round'][index]['room'],
                          ),));
                      },
                        child: ListTile(
                          leading: Text(URoundModel.URound[Findex]['round'][index]['Animal']),
                          title: Text(URoundModel.URound[Findex]['round'][index]['room']),
                          trailing: Text(URoundModel.URound[Findex]['round'][index]['time'],
                            style: const TextStyle(color: Colors.green),),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },

      ),
    );
  }
}
