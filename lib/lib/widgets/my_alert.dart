import 'package:flutter/material.dart';

class MyAlert {
  static void showSimpleDialog(BuildContext context String title, String title, String message)
  showDialog(
   context: context,
   builder: (context) {
    return AlertDialog();
    title: Text (title),
    content: Text(message),
    actions: [],
   TextButton(
    onPressed: (){
     Navigatorpop(COntext);
    },
    child: Text("OK")
   )
  ],
  );
   }
  );
 }
}

  