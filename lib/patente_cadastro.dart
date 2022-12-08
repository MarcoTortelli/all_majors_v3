// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, unused_field, avoid_unnecessary_containers

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
  TextEditingController cidade = TextEditingController();
  TextEditingController csexo = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String radioButtonItem = 'Masculino';
  int id = 1;

  Future<String> addData() async {
    var url = "http://localhost/flutter_crudest/adddata.php";
    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.fields['nome'] = cnome.text;
    request.fields['patente'] = dropdownValue;
    request.fields['idade'] = cidade.text;
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
      body: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: cnome,
                decoration: InputDecoration(
                  hintText: 'Digite o Nome',
                  labelText: 'Digite o nome',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Informe o nome';
                  }
                  if (!RegExp(r'[A-Z][a-z]*').hasMatch(value)) {
                    return "Por favor, insira um nome válido";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: cidade,
                decoration: InputDecoration(
                  hintText: 'Digite a Idade',
                  labelText: 'Digite a Idade',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Informe a idade';
                  }
                  if (!RegExp(r'^[0-9]').hasMatch(value)) {
                    return "Por favor, insira uma idade válida";
                  }
                  return null;
                },
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Radio(
                      value: 1,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          radioButtonItem = 'Masculino';
                          id = 1;
                        });
                      },
                    ),
                    Text(
                      'Masculino',
                      style: TextStyle(fontSize: 17.0),
                    ),
                    Radio(
                      value: 2,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          radioButtonItem = 'Feminino';
                          id = 2;
                        });
                      },
                    ),
                    Text(
                      'Feminino',
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                  ],
                ),
              ),
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
                items:
                    patente_array.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          )),
      floatingActionButton: Wrap(
        direction: Axis.vertical,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              heroTag: null,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  addData();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApp(),
                    ),
                  );
                }
              },
              backgroundColor: Colors.deepPurpleAccent,
              child: Icon(Icons.save_rounded),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              heroTag: null,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => MyApp())));
              },
              child: Icon(Icons.keyboard_backspace_rounded),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
