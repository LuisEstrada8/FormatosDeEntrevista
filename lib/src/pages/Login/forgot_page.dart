import 'package:flutter/material.dart';

class ForgotPass extends StatefulWidget {
  ForgotPass({Key key}) : super(key: key);

  @override
  _ForgotPassState createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  String _nombre;
  String _email;
  String _password;
  var _isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Stack(
          children: [
            _crearFondo(context),
            _loginForm(context),
          ],
        ),
      ),
    );
  }

  Widget _crearFondo(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final fondoMorado = Container(
      height: size.height * 0.6,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: <Color>[
          Color.fromRGBO(85, 244, 244, 0.61),
          Color.fromRGBO(85, 149, 244, 1.0),
        ]),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50),
          bottomLeft: Radius.circular(50),
        ),
      ),
    );

    final imagen = Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: Color.fromRGBO(255, 255, 255, 0.15),
        ));

    return Stack(
      children: [
        fondoMorado,
        Positioned(top: 10.0, left: 80.0, child: imagen),
        Positioned(top: -40.0, right: -30.0, child: imagen),
        Positioned(bottom: -50.0, left: -10.0, child: imagen),
        Positioned(bottom: -25.0, right: -25.0, child: imagen),
        Container(
          padding: EdgeInsets.only(top: 60.0),
          child: Column(
            children: [
              Icon(Icons.beenhere_sharp, color: Colors.white, size: 100),
              SizedBox(
                height: 10.0,
                width: double.infinity,
              ),
              Text(
                'Recupere su contraseña',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _loginForm(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
              child: Container(
            height: 200.0,
          )),
          Container(
            width: size.width * 0.85,
            padding: EdgeInsets.symmetric(vertical: 50.0),
            margin: EdgeInsets.symmetric(vertical: 30.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 3.0,
                    offset: Offset(0.0, 5.0),
                    spreadRadius: 3.0,
                  )
                ]),
            child: Column(
              children: [
                Text('Para recuperar su contraseña',
                    style: TextStyle(fontSize: 20.0)),
                SizedBox(height: 30.5),
                _crearEmail(),
                SizedBox(height: 30.5),
                _crearBotonLogin(),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }

  Widget _crearEmail() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Ingresa tu Email',
            suffixIcon: Icon(Icons.email_sharp),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
          ),
        ));
  }

  Widget _crearBotonLogin() {
    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        child: Text('Enviar Correo', style: TextStyle(color: Colors.white)),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      elevation: 0.0,
      color: Color.fromRGBO(85, 149, 244, 1),
      onPressed: () {},
    );
  }
}
