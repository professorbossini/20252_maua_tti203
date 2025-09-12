import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Minhas Imagens")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Hello");
        },
        child: const Icon(Icons.add),
      ),
    ),
  );
  runApp(app);
}
