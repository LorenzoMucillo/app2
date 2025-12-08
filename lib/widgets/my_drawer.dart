import 'package:for_flutter/widgets/my_imageurl.dart';
import 'package:flutter/material.dart';
import 'package:for_flutter/pages/login_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
  return Drawer(
      width: MediaQuery.of(context).size.width * 0.5,
      backgroundColor:  const Color.fromARGB(255, 255, 255, 255),
      elevation: 20,
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 30, bottom: 30, left: 40),
            child: Text(
              "Bem vindo!",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold  
              ),
            ),
          ),
          MyImageUrl(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ35i6lPclr49mIPhIM4dp21p4nhLFfEz8Hog&s'),
          Divider(color: Colors.black,),
          ListTile(
            textColor: Colors.black,
            iconColor: Colors.black,
            leading: Icon(Icons.favorite),
            title: Text("Preferências"),
          ),
           ListTile(
            textColor: Colors.black,
            iconColor: Colors.black,
            leading: Icon(Icons.delete),
            title: Text("Excluir conta"),
            onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
          ),
        ],
      ),
    );
  }
}