import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            Text(
              'Create Account',
              style: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 30),
            buildTextField('First Name', Icons.person),
            const SizedBox(height: 20),
            buildTextField('Last Name', Icons.person_outline),
            const SizedBox(height: 20),
            buildTextField('Email', Icons.email),
            const SizedBox(height: 20),
            buildTextField('Password', Icons.lock, isObscure: true),
            const SizedBox(height: 20),
            buildTextField('Confirm Password', Icons.lock_outline, isObscure: true),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                onPressed: () {},
                child: const Text('Sign Up'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String hint, IconData icon, {bool isObscure = false}) {
    return TextField(
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
}
