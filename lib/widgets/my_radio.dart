import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  const MyRadio({super.key});

  @override
  State <MyRadio> createState() =>  _MyRadioState();
}

class  _MyRadioState extends State<MyRadio> {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile<bool>(
        value: true,
        // ignore: deprecated_member_use
        groupValue: true,
        onChanged: (v) {
          setState(() {
          });
        },
        title: Text("Genero"),
      ),
    );
  }
}