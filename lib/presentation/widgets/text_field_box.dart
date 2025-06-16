import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

Widget TextFieldBox(String hint, IconData icon, {bool isObscure = false}) {
  return TextFormField(
    validator: (value){
      if (value == null || value.isEmpty){
        return " $hint is missing!";
      }
      return null;
    },
    obscureText: isObscure,
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey[900],
      prefixIcon: Icon(icon),
      hintText: hint,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}