import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wanderin/presentation/widgets/text_field_box.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final PasswordController = TextEditingController();
  final NameController = TextEditingController();
  final xController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Text(
                'Create Account',
                style: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 30),
              TextFieldBox('First Name', Icons.person),
              const SizedBox(height: 20),
              TextFieldBox('Last Name', Icons.person_outline),
              const SizedBox(height: 20),
              TextFieldBox('Email', Icons.email),
              const SizedBox(height: 20),
              TextFieldBox('Password', Icons.lock, isObscure: true),
              const SizedBox(height: 20),
              TextFieldBox('Confirm Password', Icons.lock_outline, isObscure: true),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  onPressed: () {
                    if(formKey.currentState!.validate()){

                    }
                  },
                  child: const Text('Sign Up'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
