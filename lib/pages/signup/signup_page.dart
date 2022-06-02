import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:projeto_estagio/firebase_operations/auth_operations.dart';
import 'package:projeto_estagio/pages/signup/signup_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: "Name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(labelText: "Email"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(labelText: "Password"),
                obscureText: true,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                AuthOperations.signIn(
                  email: emailController.text.trim(),
                  password: passwordController.text.trim(),
                );
              },
              child: const SizedBox(
                width: double.infinity,
                child: Center(child: Text("Submit")),
              ),
            ),
            RichText(
                text: TextSpan(
              text: "Already has an account? ",
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.of(context).pushNamed('/');
                      },
                    text: 'Login',
                    style: const TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue)),
              ],
            ))
          ],
        ),
      ),
    )));
  }
}
