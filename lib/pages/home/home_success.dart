import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projeto_estagio/repositories/auth.dart';

class HomeSuccess extends StatelessWidget {
  HomeSuccess({Key? key}) : super(key: key);
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("${user.email}"),
        ElevatedButton(
            onPressed: () {
              AuthRepository.signOut();
            },
            child: const Text('Logout')),
      ],
    )));
  }
}
