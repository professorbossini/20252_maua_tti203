import 'package:flutter/material.dart';

class AppState extends State <App> {
  int numeroImagens = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Minhass imagens')),
        body: Text('Número de imagens: $numeroImagens.'),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() => numeroImagens = numeroImagens + 1);
          },
          child: Icon(Icons.camera_alt),
        ),
      ),
    );
  }
}

class App extends StatefulWidget{
  
  @override
  State <App> createState (){
    return AppState();
  }
}
