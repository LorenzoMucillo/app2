import 'package:for_flutter/pages/login_page.dart';
import 'package:for_flutter/widgets/my_imageurl.dart';
import 'package:for_flutter/widgets/my_text_field.dart';
import 'package:for_flutter/widgets/my_title.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:for_flutter/widgets/my_button.dart';
import 'package:for_flutter/pages/form_page.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _controllerNome = TextEditingController();
  final TextEditingController _controllerData = TextEditingController();

  @override
  void dispose() {
    _controllerNome.dispose();
    _controllerData.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Registrar',
          style: GoogleFonts.flamenco(
            textStyle: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MyImageUrl(imageUrl: 'https://cdn-icons-png.freepik.com/512/7005/7005152.png'),
              
              SizedBox(height: 16),

              MyTitle(title: "Dados de registro:"),
              SizedBox(
                width: double.infinity,
                child: MyTextField(
                  title: "Usuário",
                  isDate: false,
                  isPassword: false,
                  controller: _controllerNome,
                ),
              ),

              SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                child: MyTextField(
                  title: "Senha",
                  isPassword: true,
                  isDate: false,
                  controller: _controllerData,
                ),
              ),

              MyButton(
              title: "Entrar", 
              icon: Icons.save,
              onClick: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
              ),

              SizedBox(height: 16),

              MyButton(
              title: "Cadastra", 
              icon: Icons.save,
              onClick: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FormPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}