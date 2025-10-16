import 'package:exibe_imagens/src/widgets/image_list.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'models/image_model.dart';
import 'widgets/image_list.dart';
class AppState extends State <App> {

  void obterImagem() async {
    var url = Uri.https(
      'api.pexels.com',
      '/v1/search',
      {'query': 'cats', 'page': '${numeroImagens + 1}', 'per_page': '1'}
    );
    var req = http.Request(
      'get',
      url
    );
    req.headers.addAll({
      'Authorization': chaveAPI
    });
    var result = await req.send();
    final response = await http.Response.fromStream(result);
    var decodedJSON = json.decode(response.body);
    var imagem = ImageModel.fromJSON(decodedJSON);
    setState((){
      ++numeroImagens;
      imagens.add(imagem);    
    });
  }
  List<ImageModel> imagens = [];
  int numeroImagens = 0;
  String chaveAPI = "a91Qyfh2Ud1rdeOGKV8aTR5Aj9UmRvdma6EdyhC9EfKStoAyt7rmDuhV";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Minhas imagens')),
        body: ImageList(imagens),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            obterImagem();
          },
          child: Icon(Icons.camera_alt),
        ),
      ),
    );
  }
}

class App extends StatefulWidget{
  State <App> createState(){
    return AppState();
  }
}
