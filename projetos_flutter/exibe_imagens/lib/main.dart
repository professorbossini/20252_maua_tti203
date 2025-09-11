import 'package:flutter/material.dart';

void main(){
  int a = 1;
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Minhas imagens'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          a++;
          print('Hello');
        },
        child: Icon(Icons.camera_alt),
      ),
    )
  );
  runApp(app);  
}