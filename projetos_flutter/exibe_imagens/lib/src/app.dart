import 'package:flutter/material.dart';

class AppState extends State <App> {
  int numeroImagens = 0;
  String chaveAPI = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Minhas imagens')),
        body: Text('Número imagens: $numeroImagens'),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //numeroImagens = numeroImagens + 1; não faça assim
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
  State <App> createState(){
    return AppState();
  }  
}