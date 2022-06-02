import 'package:flutter/material.dart';
import 'package:projeto_estagio/pages/welcome_page.dart';

class Routes extends StatelessWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(builder: (context) {
            return WelcomePage();
          });
        }
        return MaterialPageRoute(builder: (context) {
          return WelcomePage();
        });
      },
    );
  }
}
