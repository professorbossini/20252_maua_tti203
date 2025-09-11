// importando a classe MaterialApp()
import 'package:flutter/material.dart';

// App é um Widget com estado
// seu conteúdo depende de informações externas ou é um conteúdo que é incrementado
// a partir de ações externas (clique no botão por exemplo)
class App extends StatefulWidget {
  @override
  State<App> createState() {
    return AppState();
  }
}

// Criamos o estado da classe App, que vai ser o AppState
// herdamos de State<App> para já ter como base uma classe que modela
// a estrutura de estado de uma aplicação
class AppState extends State<App> {
  int numeroImagens = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Minhas imagens')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() => numeroImagens++);
          },
          child: Icon(Icons.camera_alt),
        ),
        body: Text("$numeroImagens"),
      ),
    );
  }
}
