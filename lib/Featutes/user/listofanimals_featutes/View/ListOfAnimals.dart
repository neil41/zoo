import 'package:flutter/material.dart';
import 'package:managethezoo/Featutes/user/listofanimals_featutes/View/Component/Animal.dart';

class ListOfAnimals extends StatefulWidget {
  const ListOfAnimals({Key? key}) : super(key: key);

  @override
  State<ListOfAnimals> createState() => _ListOfAnimalsState();
}
class _ListOfAnimalsState extends State<ListOfAnimals> {
  @override
  Widget build(BuildContext context) {
    return  const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListAnimal()
    ],);
  }
}
