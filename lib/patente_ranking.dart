// ignore_for_file: avoid_types_as_parameter_names

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'dart:typed_data';
import 'patente.dart';

class patente extends StatefulWidget {
  const patente({super.key});
  @override
  State<patente> createState() => _patenteState();
}

class _patenteState extends State<patente> {
  TextEditingController cname = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  Future<List<Patente>> getData() async {
    final response = await http.get(
        Uri.parse("http://localhost/flutter_crudest/getdata.php")
            .replace(queryParameters: {'nome': cname.text}));
    List est = json.decode(response.body);
    return est.map((patente) => Patente.fromJson(patente)).toList();
  }

  Widget build(BuildContext context) {
    return Container();
  }
}
