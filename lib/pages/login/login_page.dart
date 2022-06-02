import 'package:flutter/material.dart';
import 'package:projeto_estagio/firebase_operations/auth_operations.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
          ],
        ),
      ),
    )));
  }
}
