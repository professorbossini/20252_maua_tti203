import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'models/image_model.dart';
class AppState extends State <App> {
  int numeroImagens = 0;
  String chaveAPI = "a91Qyfh2Ud1rdeOGKV8aTR5Aj9UmRvdma6EdyhC9EfKStoAyt7rmDuhV";

  void obterImagem(){
    //http.get(Uri.parse('https://api.pexels.com/v1/search'));
    var url = Uri.https(
      'api.pexels.com',
      '/v1/search',
      {'query': 'cats', 'page': '1', 'per_page': '1'}
    );
    var req = http.Request('get', url);
    req.headers.addAll({
      'Authorization': chaveAPI
    });
    req.send().then((result){
      if(result.statusCode == 200){
        http.Response.fromStream(result).then((response){
          var decodedJSON = json.decode(response.body);
          var imagem = ImageModel.fromJSON(decodedJSON);
          print(imagem);
        });  
      }
      else{
        print("Falhou");
      }
    });
   
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Minhas imagens')),
        body: Text('Número de imagens: $numeroImagens.'),
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
