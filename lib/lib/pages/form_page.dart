import 'package:flutter/material.dart';
import 'package:form_flutter/widgets/my_buttom.dart';
import 'package:form_flutter/widgets/my_checkbox.dart';
import 'package:form_flutter/widgets/my_radio.dart';
import 'package:form_flutter/widgets/my_slider.dart';
import 'package:form_flutter/widgets/my_switch.dart';
import 'package:form_flutter/widgets/my_text_field.dart';

import 'package:form_flutter/widgets/my_tittle.dart';
import 'package:google_fonts/google_fonts.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
   double _sliderValue = 0;
   bool _notify = false;
  final List<String> _listPrefs = [];
   String? _gender = "Masculino";
  final TextEditingController _controllerNome = TextEditingController();
  final TextEditingController _controllerData = TextEditingController();

 @override
  void dispose() {
    _controllerNome.dispose();
    _controllerData.dispose();
    super.dispose();
  }

  void _changeList(pref){(!_listPrefs.contains(pref)) ? _listPrefs.add(pref) : _listPrefs.remove(pref);}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário Flutter', style: GoogleFonts.uchen()),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MyTittle(title: "Dados Pessoais:"),

              SizedBox(
                width: double.infinity,
                child: MyTextField(title: "Nome", isDate: false, controller: _controllerNome),
              ),

              SizedBox(height: 15.0),

              SizedBox(
                width: double.infinity,
                child: MyTextField(title: "Data de nascimento", isDate: true, controller: _controllerData),
              ),

              SizedBox(height: 15.0),

              MyTittle(title: "Gênero:"),

              SizedBox(height: 15),

              MyRadio(value: (v){_gender = v!;}),

              SizedBox(height: 15),

              MyTittle(title: "Preferências:"),

              SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MyCheckbox(title: "Música", value: _changeList),
                  MyCheckbox(title: "Esportes", value: _changeList),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MyCheckbox(title: "Filmes", value: _changeList),
                  MyCheckbox(title: "Culinária", value: _changeList),
                ],
              ),

              SizedBox(height: 15),

              MyTittle(title: "Escolaridade:"),

              SizedBox(height: 15),

              MySlider(
                value: (v) {_sliderValue = v!;},
              ),

              SizedBox(height: 15),

              MySwitch(title: "Deseja receber notificações?", value: (v) {_notify = v!;}),

              SizedBox(height: 15.0),

              MyButton(
                title: "Salvar", 
                icon: Icons.save, 
                onClick: (){
                  print(_controllerData.text);
                  print(_controllerNome.text);
                  print(_gender);
                  print(_listPrefs);
                  print(_sliderValue);
                  print(_notify);

                  MyAlert.showSimpleDialog(context,
                   "Dados cadastrais",
                    "${_controllerNome}\n
                    "${_controllerData.text}\n
                    ""
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
