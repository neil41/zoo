import 'package:flutter/material.dart';

class FormEmail extends StatefulWidget {
  const FormEmail({Key? key, required this.icon, required this.controller, required this.texterr, required this.hintText, this.initialValue}) : super(key: key);
  final Icon icon;
  final TextEditingController controller;
  final String texterr;
  final String hintText;
  final String? initialValue;

  @override
  State<FormEmail> createState() => _FormEmailState();
}

class _FormEmailState extends State<FormEmail> {

  bool texterr=false;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          decoration:  BoxDecoration(
            border: Border.all(color:texterr ? const Color.fromARGB(255, 245, 7, 4):const Color.fromARGB(
                255, 136, 135, 135),width: 1.0),
            color: Colors.white24,
            borderRadius: const BorderRadius.all(Radius.circular(17.0)),
          ),
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.02,
            //  bottom: MediaQuery.of(context).size.height * 0.253
          ),
          child: Container(
            child: TextFormField(
              autofocus: true,
               initialValue: widget.initialValue,
              cursorColor: Colors.blue[600],
              controller: widget.controller,
              decoration: InputDecoration(
                hintStyle: TextStyle(
                    textBaseline: TextBaseline.alphabetic,
                    fontSize: 12),
               hintText: widget.hintText,
                  prefixIconColor: Color.fromARGB(
                      255, 78, 164, 11),
                  prefixIcon:widget.icon,

                  //     suffixIcon: Icon(Icons.mail_outline),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 12.0,left: 8.0,right: 8.0,bottom: 5.0)),
              validator: (value){
                print(value);
                if(value!.isEmpty){
                  setState(() {
                    texterr = true;
                    print(texterr);
                  });
                }else if(value.isNotEmpty){
                  setState(() {
                    texterr = false;
                    print(texterr);
                  });
                }
                return null;
              },
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            texterr? SizedBox(
                width: MediaQuery.of(context).size.width *0.65,
                child: Text(widget.texterr,style: const TextStyle(color: Color.fromARGB(255, 245, 7, 4),),maxLines: 2,)):SizedBox(),
          ],
        ),
      ],
    );
  }
}
