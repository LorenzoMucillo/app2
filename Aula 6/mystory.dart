import 'package:flutter/material.dart';

class Mystory extends StatelessWidget {
 final String? title = "Perfil";
  const Mystory({super.key, required title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.orange,
          child: FlutterLogo(size: 60),
        ),
        Text("title!")
      ],
    );
  }
}
