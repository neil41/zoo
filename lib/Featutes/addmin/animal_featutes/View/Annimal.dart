import 'package:flutter/material.dart';
import 'package:managethezoo/Featutes/addmin/animal_featutes/View/Component/add_AndDelete.dart';

class MagAnimal extends StatefulWidget {
  const MagAnimal({Key? key}) : super(key: key);

  @override
  State<MagAnimal> createState() => _MagAnimalState();
}

class _MagAnimalState extends State<MagAnimal> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height * 0.8939,
      color: const Color.fromARGB(255, 4, 204, 17),
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.shortestSide * 0.015,
        left: MediaQuery.of(context).size.shortestSide * 0.02,
        right: MediaQuery.of(context).size.shortestSide * 0.02,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  const [
           // ButtonAddAnimal(),
            AddAndDelete(),
          ],
        ),
      ),
    ));
  }
}


