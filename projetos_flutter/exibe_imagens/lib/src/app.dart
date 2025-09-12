import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AppState extends State<App> {
  int numeroImagens = 0;

  void obterImagem() {
    setState(() {
      numeroImagens++;
    });
    var url = Uri.https('api.pexels.com', '/v1/search', {
      'query': 'people',
      'page': '1',
      'per_page': '1',
    });
    var req = http.Request('GET', url);
    req.headers.addAll({'Authorization': chaveAPI});
    req.send().then((result) {
      if (result.statusCode == 200) {
        http.Response.fromStream(result).then((response) {
          print(response.body);
        });
      } else {
        print('Falhou!');
      }
    });
    //    http.get(Uri.parse('https://api.pexels.com/v1/search?query=people'));
  }

  String chaveAPI = "sua_chave_aqui";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        // ...
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Minhas imagens')),
        body: Text('Número de imagens: $numeroImagens.'),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.camera_alt),
          onPressed: obterImagem,
        ),
      ),
    );
  }
}

class App extends StatefulWidget {
  State<App> createState() {
    return AppState();
  }
}
