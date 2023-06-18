import 'package:flutter/material.dart';

class AnimalInType extends StatefulWidget {
  const AnimalInType({
    super.key, required this.typeAnimal, required this.nametype,
  });
final List<dynamic> typeAnimal ;
final String nametype ;

  @override
  State<AnimalInType> createState() => _AnimalInTypeState();
}
class _AnimalInTypeState extends State<AnimalInType> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:
      //  Text("${widget.num}"),
     //
        AppBar(
          title: Text("${widget.nametype}"),
          actions: [
            IconButton(onPressed: (){
              Navigator.pushNamed(context, 'user');
            }, icon: const Icon(Icons.home_outlined))
          ],),
        body: SizedBox(
          height: MediaQuery.of(context).size.height * 0.8634,
          width: double.infinity,
          child: GridView.builder(
            itemCount: widget.typeAnimal.length,
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
                        // side: BorderSide(
                        //   width: 0.9,
                        //   color: Color.fromARGB(255, 5, 5, 5),
                        // )
                      ),
                      // surfaceTintColor: Colors.orange
                    ),
                    onPressed: null,
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
                                        "https://www.seub.or.th/seubweb/wp-content/uploads/2020/03/%E0%B8%AB%E0%B8%99%E0%B9%89%E0%B8%B2%E0%B8%9B%E0%B8%81%E0%B9%80%E0%B8%A7%E0%B9%87%E0%B8%9A-2-2.jpg"),
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
                              "${widget.typeAnimal[index]['Animal']}",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(color: Colors.white),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ชนิด : ${widget.typeAnimal[index]['type']}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: MediaQuery.of(context)
                                                .size
                                                .shortestSide *
                                            0.035),
                                  ),
                                  Text(
                                    "สายพันธุ์ : ${widget.typeAnimal[index]['Species']}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: MediaQuery.of(context)
                                                .size
                                                .shortestSide *
                                            0.035),
                                  ),
                                  Text(
                                    "เวลาโชว์ : ${widget.typeAnimal[index]['Show_duration']}",
                                    style: TextStyle(
                                        color: Colors.white,
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
              );
            },
          ),
        ),
      ),
    );
  }
}
