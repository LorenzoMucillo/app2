import 'package:flutter/material.dart';
import 'package:form_flutter/widgets/my_textfiled.dart';
import 'package:google_fonts/google_fonts.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text(
          'Formulário Flutter',
          style: GoogleFonts.uchen(),
        ),
       ),

       body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text(
                  "Dados Pessoais:",
                  style: GoogleFonts.uchen(
                    fontSize: 16,
                  ),
                ),
              ),  
                 SizedBox( 
                 width: double.infinity,
                 child: MyTextField()
                 ),

               SizedBox(height: 15,),

                SizedBox(
                  width: double.infinity,
                  child: MyTextField(),
                  ),

                  SizedBox(height: 15,),
                
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    "Gênero:",
                    style: GoogleFonts.anekBangla(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                )
            ],
          ),
        ),
       ),
    );
  }
}