import 'package:flutter/material.dart';
import 'screens/register.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Register',
      home: Scaffold(
        appBar: AppBar(
          title: Text(' Form Registrasi'),
        ),
        body: RegisterScreens(),
      ),
    );
  }
}