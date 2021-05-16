import 'package:flutter/material.dart';

String _email;
String _password;

Widget buildEmail() {
  return TextFormField(
    style: TextStyle(color: Colors.black),
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.email,
          color: Colors.black54,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        labelText: 'Email',
        labelStyle: TextStyle(color: Colors.black),
        filled: true,
        fillColor: Colors.white.withOpacity(0.8)),
    validator: (String value) {
      if (value.isEmpty) {
        return 'Email is required';
      }

      return null;
    },
    onSaved: (String value) {
      _email = value;
    },
  );
}

Widget buildPassword() {
  return TextFormField(
    obscureText: true,
    style: TextStyle(color: Colors.black),
    decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        labelStyle: TextStyle(color: Colors.black),
        filled: true,
        fillColor: Colors.white.withOpacity(0.8),
        labelText: 'Password',
        prefixIcon: Icon(
          Icons.vpn_key,
          color: Colors.black54,
        )),
    validator: (String value) {
      if (value.isEmpty) {
        return 'Password is required';
      }

      return null;
    },
    onSaved: (String value) {
      _password = value;
    },
  );
}
