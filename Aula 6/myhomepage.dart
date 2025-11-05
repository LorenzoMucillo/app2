import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/mystory.dart';

class Myhomepage extends StatelessWidget {
  const Myhomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aula 6"),
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.5,
        backgroundColor: Colors.red,
        elevation: 20,
        child: Column(
          children: [
            Text(
              "Bem vindo!",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
             
             
              ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: Icon(Icons.mail),
              title: Text("Contato"),
            ),
            ListTile( 
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: Icon(Icons.settings),
              title: Text("Preferências"),
            )
          ],
        ),
      ),
    body:Column(
      children:<Widget> [
        Mystory(title: "Carros"),
         Mystory(title: "Carros"),
      ],
    ) ,
    );
  }
}
