import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/input_field.dart';
import '../utils/auth_service.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  void _signup() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String name = nameController.text.trim();

    if (email.isNotEmpty && password.isNotEmpty && name.isNotEmpty) {
      bool success = await AuthService().signUp(email, password, name);
      if (success) {
        Navigator.pushReplacementNamed(context, '/home');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Signup failed! Try again.")),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("All fields are required!")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputField(controller: nameController, hintText: "Full Name"),
            SizedBox(height: 10),
            InputField(controller: emailController, hintText: "Email"),
            SizedBox(height: 10),
            InputField(controller: passwordController, hintText: "Password", obscureText: true),
            SizedBox(height: 20),
            CustomButton(
              text: "Sign Up",
              onPressed: _signup,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/signin');
              },
              child: Text("Already have an account? Sign In"),
            ),
          ],
        ),
      ),
    );
  }
}
