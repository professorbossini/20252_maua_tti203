import 'package:flutter/material.dart';
import 'package:http/http.dart' as http show Request, Response;
class AppState extends State <App> {

  void obterImagem(){
    //http.get();
    var url = Uri.https(
      'api.pexels.com',
      '/v1/search',
      {'query': 'cats', 'page': '1', 'per_page': '1'}
    );
    var req = http.Request('get', url);
    req.headers.addAll({'Authorization': chaveAPI});
    //IO-Bound
    req.send().then((result){
      http.Response.fromStream(result).then((response){
        print(response.body);
      });     
    });
    print('oi');
    //requests.get();
  }
  int numeroImagens = 0;
  String chaveAPI = "a91Qyfh2Ud1rdeOGKV8aTR5Aj9UmRvdma6EdyhC9EfKStoAyt7rmDuhV";
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
