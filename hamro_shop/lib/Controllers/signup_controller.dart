import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hamro_shop/firebase/auth_service.dart';
// import 'auth_service.dart';

class SignupController {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();
  final AuthService _authService = AuthService();

  // Form validation methods
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    return null;
  }

  String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your username';
    }
    return null;
  }

  // Signup method
  Future<void> signup(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      User? user = await _authService.signUpWithEmail(
        usernameController.text,
        emailController.text,
        passwordController.text,
      );
      if (user != null) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Signup Successful')));
        // Navigate to home screen or login screen
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Signup Failed')));
      }
    }
  }
}
