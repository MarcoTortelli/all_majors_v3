// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'main.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'patente_ranking.dart';

class patenteCadastro extends StatefulWidget {
  patenteCadastro({Key? key}) : super(key: key);

  @override
  State<patenteCadastro> createState() => _patenteCadastroState();
}

const List<String> patente_array = <String>[
  'Prata 1',
  'Prata 2',
  'Prata 3',
  'Prata 4',
  'Prata de Elite',
  'Prata de Elite Mestre',
  'Ouro 1',
  'Ouro 2',
  'Ouro 3',
  'Ouro 4',
  'Mestre Guardiao 1',
  'Mestre Guardiao 2',
  'Mestre Guardiao Elite',
  'Distinto Mestre Guardiao',
  'Aguia Lendaria',
  'Aguia Lendaria Mestre',
  'Mestre Supremo de Primeira Classe',
  'Global Elite'
];

class _patenteCadastroState extends State<patenteCadastro> {
  var temp = Uint8List(500);
  String dropdownValue = patente_array.first;
  TextEditingController cnome = TextEditingController();
  TextEditingController cpatente = TextEditingController();
  TextEditingController csexo = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String radioButtonItem = 'Masculino';
  int id = 1;
  int checkBox = 0;
  Future<String> addData() async {
    var url = "http://localhost/flutter_crudest/adddata.php";
    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.fields['nome'] = cnome.text;
    request.fields['patente'] = cnome.text;
    request.fields['idade'] = cnome.text;
    request.fields['sexo'] = id == 1 ? 'M' : 'F';
    var res = await request.send();
    return Future.value(res.reasonPhrase);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton(
            value: dropdownValue,
            icon: Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: Colors.blueAccent),
            underline: Container(
              height: 2,
              color: Colors.blue,
            ),
            onChanged: (newValue) {
              setState(() {
                dropdownValue = newValue.toString();
              });
            },
            items: patente_array.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
