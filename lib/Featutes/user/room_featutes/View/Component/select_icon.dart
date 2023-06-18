import 'package:flutter/material.dart';
import 'package:managethezoo/Featutes/user/room_featutes/View/Component/R_in_Animal.dart';

class SelectIcon extends StatefulWidget {
  const SelectIcon({
    super.key,
    required this.aa,
  });

  @override
  final List<dynamic> aa;


  State<SelectIcon> createState() => _SelectIconState();
}

class _SelectIconState extends State<SelectIcon> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ประเภทสัตว์'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'user');
                },
                icon: const Icon(Icons.home_outlined))
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width *0.03
          ),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                "ประเภทสัตว์ในวันนี้",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.shortestSide * 0.05),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.14,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.aa.length == null ? 1 : widget.aa.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder(),
                                    backgroundColor:
                                        const Color.fromARGB(202, 36, 164, 22),
                                    padding: const EdgeInsets.all(9),
                                    elevation: 0),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AnimalInType(
                                          typeAnimal: widget.aa[index]['type'], nametype: '${widget.aa[index]['nametype']}',
                                        ),
                                      ));
                                },
                                child: const Icon(Icons.adb_sharp)),
                             Text(
                              widget.aa[index]['nametype'],
                              style: const TextStyle(fontSize: 13),
                            )
                          ],
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width *0.04,)
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
