import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
              Icon(Icons.all_inbox, color: Colors.white, size: 100),
              SizedBox(
                height: 10.0,
                width: double.infinity,
              ),
              Text(
                'Bienvenido',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              )
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
                Text('Registro', style: TextStyle(fontSize: 20.0)),
                SizedBox(height: 20.5),
                _crearNombre(),
                SizedBox(height: 20.5),
                _crearApellidoPaterno(),
                SizedBox(height: 20.5),
                _crearApellidoMaterno(),
                SizedBox(height: 20.5),
                _crearEmail(),
                SizedBox(height: 20.5),
                _crearTelefono(),
                SizedBox(height: 20.5),
                _crearControl(),
                SizedBox(height: 20.5),
                _crearPassword(),
                SizedBox(height: 20.5),
                _crearConfirmacionPassword(),
                SizedBox(height: 20.5),
                _crearBotonLogin(),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }

  Widget _crearNombre() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          decoration: InputDecoration(
            labelText: 'Ingresa tu Nombre',
            suffixIcon: Icon(Icons.account_circle_rounded),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
          ),
        ));
  }

  Widget _crearApellidoPaterno() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Ingresa tu Apellido Paterno',
            suffixIcon: Icon(Icons.account_circle_rounded),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
          ),
        ));
  }

  Widget _crearApellidoMaterno() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Ingresa tu Apellido Materno',
            suffixIcon: Icon(Icons.account_circle_rounded),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
          ),
        ));
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

  Widget _crearTelefono() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Ingresa tu Telefono',
            suffixIcon: Icon(Icons.contact_phone_outlined),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
          ),
        ));
  }

  Widget _crearControl() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Ingresa tu Numero de control',
            suffixIcon: Icon(Icons.contact_phone_outlined),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
          ),
        ));
  }

  Widget _crearPassword() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          obscureText: _isPasswordVisible,
          decoration: InputDecoration(
            hintText: 'Ingresar Contraseña',
            labelText: 'Ingresar Contraseña',
            //IMPORTANTE
            //---------------------------------------------------------------------
            suffixIcon: IconButton(
              icon: _isPasswordVisible
                  ? Icon(Icons.remove_red_eye)
                  : Icon(Icons.close),
              tooltip: 'Ver Password',
              onPressed: () => setState(() {
                _isPasswordVisible = !_isPasswordVisible;
              }),
            ),
            //---------------------------------------------------------------------
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
          ),
        ));
  }

  Widget _crearConfirmacionPassword() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          obscureText: _isPasswordVisible,
          decoration: InputDecoration(
            hintText: 'Ingrese contraseña',
            labelText: 'Ingrese contraseña',
            //IMPORTANTE
            //---------------------------------------------------------------------
            suffixIcon: IconButton(
              icon: _isPasswordVisible
                  ? Icon(Icons.remove_red_eye)
                  : Icon(Icons.close),
              tooltip: 'Ver Password',
              onPressed: () => setState(() {
                _isPasswordVisible = !_isPasswordVisible;
              }),
            ),
            //---------------------------------------------------------------------
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
          ),
        ));
  }

  Widget _crearBotonLogin() {
    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        child: Text('Iniciar sesion', style: TextStyle(color: Colors.white)),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      elevation: 0.0,
      color: Color.fromRGBO(85, 149, 244, 1),
      onPressed: () {
        Navigator.pushReplacementNamed(context, 'login');
      },
    );
  }
}
