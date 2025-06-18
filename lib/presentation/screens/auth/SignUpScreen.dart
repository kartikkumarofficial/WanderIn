import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wanderin/presentation/bloc/auth_bloc.dart';
import 'package:wanderin/presentation/widgets/text_field_box.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: BlocListener<AuthBloc, AuthState>(

  listener: (context, state) {
    if (state is AuthLoading) {
      Get.snackbar("Loading", "Signing up...");
    } else if (state is AuthSuccess) {
      Get.snackbar("Success", state.message);
     Navigator.of(context).pushReplacementNamed('/main');

    } else if (state is AuthFailure) {
      Get.snackbar("Error", state.error, backgroundColor: Colors.red);
    }


  },
  child: Form(
          key: formKey,
          child: Column(
            children: [
              Text(
                'Create Account',
                style: GoogleFonts.poppins(fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 30),
              TextFieldBox(
                hint: 'Name', icon: Icons.person, controller: nameController,),
              const SizedBox(height: 20),
              TextFieldBox(
                hint: 'Email', icon: Icons.email, controller: emailController,),
              const SizedBox(height: 20),
              TextFieldBox(hint: 'Password',
                icon: Icons.lock,
                isObscure: true,
                controller: passwordController,),
              const SizedBox(height: 20),
              TextFieldBox(hint: 'Confirm Password',
                icon: Icons.lock_outline,
                isObscure: true,
                controller: confirmPasswordController,),
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
                    if (formKey.currentState!.validate()) {
                      context.read<AuthBloc>().add(
                          AuthSignUp(
                              email: emailController.text.trim(),
                              password: passwordController.text.trim(),
                              name: nameController.text.trim(),
                              confirmPassword: confirmPasswordController.text.trim()));
                    }
                  },
                  child: const Text('Sign Up'),
                ),
              ),
            ],
          ),
        ),
),
      ),
    );
  }
}
