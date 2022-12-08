// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, sized_box_for_whitespace

import 'package:all_majors_final_version/patente.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'allmajors.dart';
import 'patente_ranking.dart';
import 'patente_cadastro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trabalho 3º Trimestre',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const MyHomePage(title: 'Trabalho 3º Trimestre'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 300,
                  height: 150,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => allmajors())));
                      },
                      child: Text('Todos os Majors')),
                ),
                Container(
                  width: 300,
                  height: 150,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => patenteCadastro())));
                      },
                      child: Text('Cadastre sua patente')),
                ),
                Container(
                  width: 300,
                  height: 150,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => patente())));
                      },
                      child: Text('Ranking de Patentes')),
                ),
              ],
            )
          ],
        ));
  }
}
