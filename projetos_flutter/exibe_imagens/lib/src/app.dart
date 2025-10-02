import 'package:flutter/material.dart';
import 'package:http/http.dart' as http show get;
class AppState extends State <App> {

  void obterImagem(){
    //requests.get()
    //axios.get()
    //fetch()
    var url = Uri.https(
      'api.pexels.com',
      '/v1/search',
      {'query': 'cats', 'per_page': '1', 'page': '1'}
    );    
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
