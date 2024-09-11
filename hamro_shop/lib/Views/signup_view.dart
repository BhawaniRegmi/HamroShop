import 'package:flutter/material.dart';
import 'package:hamro_shop/Controllers/signup_controller.dart';
// import 'signup_controller.dart';

class SignupPage extends StatelessWidget {
  final SignupController controller = SignupController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              TextFormField(
                controller: controller.usernameController,
                decoration: InputDecoration(labelText: 'Username'),
                validator: controller.validateUsername,
              ),
              TextFormField(
                controller: controller.emailController,
                decoration: InputDecoration(labelText: 'Email'),
                validator: controller.validateEmail,
              ),
              TextFormField(
                controller: controller.passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: controller.validatePassword,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  controller.signup(context);
                },
                child: Text('Sign Up'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text('Already have an account? Log In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
