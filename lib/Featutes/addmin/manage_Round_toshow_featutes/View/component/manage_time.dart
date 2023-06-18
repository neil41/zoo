import 'package:flutter/material.dart';
import 'package:managethezoo/Featutes/addmin/manage_Round_toshow_featutes/Controler/custom_Controler.dart';
import 'package:managethezoo/Utils/UI/Custom_Diarlog.dart';


class ManageTime extends StatefulWidget {
  const ManageTime({
    super.key,
   required this.Adata,
  });

final List<dynamic> Adata;
  @override
  State<ManageTime> createState() => _ManageTimeState();
}

class _ManageTimeState extends State<ManageTime> {
  TextEditingController nameAnimal = TextEditingController();
  TextEditingController nameRoom = TextEditingController();
  TextEditingController time = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 4, 204, 17),
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.shortestSide * 0.015,
        left: MediaQuery.of(context).size.shortestSide * 0.02,
        right: MediaQuery.of(context).size.shortestSide * 0.02,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width *0.4,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                        shape:  const StadiumBorder(),
                  backgroundColor: const Color.fromARGB(255, 1, 19, 44)),
                onPressed: (){
                add();
                },
                child: Row(
                  children: const [
                    Icon(Icons.add),
                    Text("เพิ่มเวลาแสดง"),
            ],)),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.6932,
            width: double.infinity,
            child: ListView.builder(
              itemCount: widget.Adata.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.015),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                    ), onPressed:() {
                      update(index);
                    },
                    child: ListTile(
                      leading: Text(widget.Adata[index]['Animal']),
                      title: Text(widget.Adata[index]['room']),
                      subtitle: Text(widget.Adata[index]['time'],
                        style: const TextStyle(color: Colors.green),),
                      trailing: IconButton(
                        onPressed:(){
                          dalete(index);
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void add() {
     CusttomRoundControler().addTimeShow(
       context: context,
       nameAnomal: nameAnimal,
       nameRoom: nameRoom,
       time: time,
       Adata: widget.Adata,
     );
    nameAnimal.clear();
    nameRoom.clear();
    time.clear();
    setState(() {});
  }

  void update(int index) {
    TextEditingController editnameAnomal =
    TextEditingController(text: widget.Adata[index]['Animal']);
    TextEditingController editnameRoom =
    TextEditingController(text: widget.Adata[index]['room']);
    TextEditingController edittime =
    TextEditingController(text: widget.Adata[index]['time']);
    CusttomRoundControler().editTimeShow(
        Adata: widget.Adata,
        context: context,
        editnameAnomal: editnameAnomal,
        editnameRoom: editnameRoom,
        edittime: edittime, Lindex: index);
    setState(() {});
  }

  void dalete(int index) {
    CustomDiarlog().diarlog(
        context: context,
        title: "ลบรอบเวลาการแสดง",
        content1:"${widget.Adata[index]['Animal']}",
        content2:"ห้อง ${widget.Adata[index]['room']}" ,
        content3:"เวลา ${widget.Adata[index]['time']}" ,
        ok: (){
          widget.Adata.removeAt(index);
          setState(() {});
      Navigator.pop(context);
    });
  }

}
