import 'package:flutter/material.dart';

class DatosEntrevista extends StatefulWidget {
  @override
  _DatosEntrevistaState createState() => _DatosEntrevistaState();
}

class _DatosEntrevistaState extends State<DatosEntrevista> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Datos Entrevista'),
        ),
      ),
    );
  }
}
