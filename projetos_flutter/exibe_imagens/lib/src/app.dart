import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'models/image_model.dart';
import 'widgets/image_list.dart';



class AppState extends State<App> {
  int numeroImagens = 0;
  List<ImageModel> imagens = [];

  void obterImagem() async {
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
    final result = await req.send();
    if (result.statusCode == 200) {
      final response = await http.Response.fromStream(result);
      var decodedJSON = json.decode(response.body);
      var imagem = ImageModel.fromJSON(decodedJSON);
      setState(() {
        imagens.add(imagem);
      });
      print(imagem);
    } else {
      print('Falhou!');
    }

    // req.send().then((result) {
    //   if (result.statusCode == 200) {
    //     http.Response.fromStream(result).then((response) {
    //       // print(response.body);
    //       var decodedJSON = json.decode(response.body);
    //       var imagem = ImageModel.fromJSON(decodedJSON);
    //       print(imagem);
    //     });
    //   } else {
    //     print('Falhou!');
    //   }
    // });
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
        // body:  Text('Número de imagens: $numeroImagens.'),
        body: ImageList(imagens),
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
