import 'package:flutter/material.dart';
import '../mixins/validation.dart';

class RegisterScreens extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegisterScreenState();
  }
}

class RegisterScreenState extends State<RegisterScreens> with Validation {
  final formKey = GlobalKey<FormState>();
  String name = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Form(
        key: formKey,
          child: Column(
        children: <Widget>[
          nameField(),
          emailField(),
          passwordField(),
          registerButton(),
        ],
      )),
    );
  }

  Widget nameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Nama Lengkap'),
      validator: validateName,
      onSaved: (String value){
        name = value;
      },
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration:
          InputDecoration(labelText: 'Email', hintText: 'email@example.com'),
      validator: validateEmail,
      onSaved:(String value) {
        email = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration:
          InputDecoration(labelText: 'Password', hintText: 'Enter Password'),
      validator: validatePassword,
      onSaved: (String value){
        password = value;
      }
    );
  }

  Widget registerButton() {
    return RaisedButton(
      color: Colors.blueAccent,
      onPressed: () {
        if(formKey.currentState.validate()){
          formKey.currentState.save();
          print('Nama lengkap : $name');
          print('Email : $email');
          print('Password : $password');
        }
      },
      child: Text('Daftar'),
    );
  }
}
