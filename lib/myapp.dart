import 'package:flutter/material.dart';
import 'package:form_flutter/pages/form_page.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Formulário Flutter",
      theme: ThemeData(
        primarySwatch: Colors.grey
      ),
      home: FormPage(),
      );
  }
}