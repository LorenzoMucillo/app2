import 'package:flutter/material.dart';
import 'package:http/http.dart' as Http;
import 'dart:convert';

class CepPage extends StatefulWidget {
  const CepPage({super.key});

  @override
  State<CepPage> createState() => _CepPageState();
}

class _CepPageState extends State<CepPage> {
  final TextEditingController _cepcontroller = TextEditingController();

  String cepRecebito = "";

  _retornaCep() async {
    String busca = "http://viacep.com.br/ws/" + _cepcontroller.text + "/json/";
    Http.Response response = await Http.get(Uri.parse(busca));
    Map site = json.decode(response.body);

    cepRecebito += site["logadouro"] + "\n";
    cepRecebito += site["localidade"] + "\n";
    cepRecebito += site["uf"] + "\n";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("buscar CEP")),
      body: Column(
        children: [
          TextField(
            controller: _cepcontroller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("CEP"),
            ),
            keyboardType: TextInputType.number,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _retornaCep();
              });
            },
            child: Text("Buscar CEP"),
          ),
          SizedBox(
            child: Text(cepRecebito),
          )
        ],
      ),
    );
  }
}
