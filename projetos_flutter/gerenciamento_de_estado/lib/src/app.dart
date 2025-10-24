import 'package:flutter/material.dart';
import 'package:gerenciamento_de_estado/src/telas/login_tela.dart';
import 'blocs/provider.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: "Login",
        home: Scaffold(body: LoginTela()),
      ),
    );
  }
}
