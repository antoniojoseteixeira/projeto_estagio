import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projeto_estagio/pages/home_page.dart';
import 'package:projeto_estagio/pages/login_page.dart';

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
                    return HomePage();
                  } else {
                    return LoginPage();
                  }
                });
          });
        }
        return MaterialPageRoute(builder: (context) {
          return LoginPage();
        });
      },
    );
  }
}
