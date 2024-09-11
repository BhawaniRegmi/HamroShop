import 'package:flutter/material.dart';
import 'package:hamro_shop/Controllers/login_controller.dart';
// import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
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
                  controller.login(context);
                },
                child: Text('Login'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: Text('Don\'t have an account? Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
