import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

class TextFieldBox extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final bool isObscure;
  final IconData icon;
  const TextFieldBox ({super.key, required this.hint, required this.controller, required this.icon, this.isObscure=false });

  @override
  Widget build(BuildContext context) {
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
      ),);
  }
}


