import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _fondoApp(),
          SingleChildScrollView(
            child: Column(children: [
              _titulos(),
              _botonesredondeados(context),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _fondoApp() {
    final gradiante = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.4),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(42, 50, 255, 1.0),
            Color.fromRGBO(44, 116, 255, 1.0)
          ])),
    );

    final caja = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 300.0,
        height: 300.0,
        decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(50.0),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 0.5),
              Color.fromRGBO(241, 142, 172, 0.5)
            ])),
      ),
    );

    return Stack(
      children: <Widget>[
        gradiante,
        Positioned(
          child: caja,
          top: -70,
        )
      ],
    );
  }
}

Widget _botonesredondeados(BuildContext context) {
  return Table(
    children: [
      TableRow(children: [
        _crearBotonRedondeado(Colors.blue, Icons.data_usage, 'Datos Generales',
            'datosG', context),
        _crearBotonRedondeado(Colors.blue, Icons.monetization_on_outlined,
            'Estudio SocioEconomico', 'economicos', context),
      ]),
      TableRow(children: [
        _crearBotonRedondeado(Colors.blue, Icons.library_books_sharp,
            'Entrevista', 'entrevista', context),
        _crearBotonRedondeado(Colors.blue, Icons.assignment_ind_rounded,
            'Ficha de Identificacion', 'identificacion', context),
      ]),
    ],
  );
}

Widget _crearBotonRedondeado(Color color, IconData icono, String texto,
    String ruta, BuildContext context) {
  return Container(
    height: 180,
    margin: EdgeInsets.all(15.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(65, 66, 107, 0.6),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          height: 5.0,
        ),
        CircleAvatar(
          child: IconButton(
              icon: Icon(icono),
              onPressed: () {
                Navigator.pushNamed(context, ruta);
              }),
          radius: 35.0,
          backgroundColor: color,
        ),
        Text(
          texto,
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 5.0,
        ),
      ],
    ),
  );
}

Widget _titulos() {
  return SafeArea(
    child: Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Escoge alguna encuesta',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'La informacion de estas encuestas no sera compartida con nadie',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}
