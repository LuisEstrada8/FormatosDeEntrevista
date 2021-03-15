import 'package:entrevista/src/pages/Formatos/datos_entrevista_page.dart';
import 'package:entrevista/src/pages/Formatos/datos_ficha_identificacion.dart';
import 'package:entrevista/src/pages/Formatos/datos_generales_pages.dart';
import 'package:entrevista/src/pages/Formatos/datos_socioeconomicos_page.dart';
import 'package:entrevista/src/pages/Login/forgot_page.dart';
import 'package:entrevista/src/pages/home_pages.dart';
import 'package:entrevista/src/pages/Login/login_pages.dart';
import 'package:entrevista/src/pages/Login/register_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white));

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Entrevista',
        initialRoute: 'login',
        routes: {
          'login': (BuildContext context) => Loginpage(),
          'home': (BuildContext context) => HomePage(),
          'register': (BuildContext context) => RegisterPage(),
          'forgot': (BuildContext context) => ForgotPass(),
          'datosG': (BuildContext context) => DatosGerales(),
          'entrevista': (BuildContext context) => DatosEntrevista(),
          'identificacion': (BuildContext context) => DatosFicha(),
          'economicos': (BuildContext context) => DatosEconomicos(),
        });
  }
}
