import 'package:flutter/material.dart';

class DatosFicha extends StatefulWidget {
  @override
  _DatosFicha createState() => _DatosFicha();
}

class _DatosFicha extends State<DatosFicha> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Ficha Identificacion'),
        ),
      ),
    );
  }
}
