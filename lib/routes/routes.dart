import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projeto_estagio/pages/home/home_page.dart';
import 'package:projeto_estagio/pages/login/login_page.dart';
import 'package:projeto_estagio/pages/signup/signup_page.dart';

class Routes extends StatelessWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(builder: (context) {
            return StreamBuilder<User?>(
                stream: FirebaseAuth.instance.authStateChanges(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return const HomePage();
                  } else {
                    return const LoginPage();
                  }
                });
          });
        }

        if (settings.name == '/signup') {
          return MaterialPageRoute(builder: (context) {
            return const SignUpPage();
          });
        }
      },
    );
  }
}
