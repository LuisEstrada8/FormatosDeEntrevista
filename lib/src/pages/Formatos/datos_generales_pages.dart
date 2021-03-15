import 'package:flutter/material.dart';

class DatosGerales extends StatefulWidget {
  @override
  _DatosGeralesState createState() => _DatosGeralesState();
}

class _DatosGeralesState extends State<DatosGerales> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Datos Generales'),
        ),
      ),
    );
  }
}
