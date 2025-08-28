import 'package:colecoes/colecoes.dart' as colecoes;

import 'dart:io';
import 'dart:math';

void jogoMegaSena(){
  // 1- Pede para o usuário digitar seu jogo da mega
  List<int> jogoUsuario = [];

  while(jogoUsuario.length < 6){
    // String?
    print("Digite um dos números do seu jogo: ");
    var num = int.parse(stdin.readLineSync()!);

    // se o numero não esta entre 1 e 60
    if(num < 1 || num > 60){
      print("Número deve estar entre 1 e 60!!");
    // verificando se a lista ja contem o numero
    }else if(jogoUsuario.contains(num)){ 
      print("Número já foi escolhido");
    }else{
      jogoUsuario.add(num);
    }
  }

  //2 - Gera os números da mega
  Random random = Random();
  List<int> jogoSorteado = [];

  while(jogoSorteado.length < 6){
    // gerar um numero aleatorio e colocar em jogoSorteado
    int num = random.nextInt(60) + 1; // 1 a 60
    if(!jogoSorteado.contains(num)){ // se o numero nao estiver em jogoSorteado
        jogoSorteado.add(num);
    }
  }

  //3- Exibir os dois jogos ordenados e lado a lado
  jogoSorteado.sort();
  jogoUsuario.sort();
  print("Usuario: $jogoUsuario");
  print("Sorteado: $jogoSorteado");

  //4- Mostrar ao usuários quais número (e quantos) ele acertou
  // criando um laço que compara todos os elementos de jogoUsuario com os de jogoSorteado
  // os que respeitarem a condição jogoSorteado.contains(n) são adicionados
  List<int> acertos = jogoUsuario.where((n) => jogoSorteado.contains(n)).toList();

  print("Acertos: $acertos");
  print("Total: ${acertos.length}");
}

void main(List<String> arguments) {
  
  //jogoMegaSena();

  // Testes com Coleções: Conjuntos
  // Exemplos com Conjuntos
  var nomes = {"Ana", "João"};
  print(nomes); // Ana Joao
  print(nomes.runtimeType); //Set<String>

  var paises = {"Brasil", "Brasil"};
  print(paises); // imprime só Brasil, o conjunto desconsidera valores repetidos

  // criação de um mapa
  // Map<dynamic,dynamic>
  var mapa = {}; // estrutura chave valor, cada posicao vai ser uma combinacao chave/valor
  print(mapa.runtimeType);

  var paises2 = <String>{}; //Só um tipo de dado especificado = conjunto
  print(paises2.runtimeType); // _Set<String>

  var precoFrutas = <String, num>{};// Dois tipos de dados especificados = mapa
  print(precoFrutas.runtimeType); // _Map{String, num}

  // Testes com Coleções
  //type annotation
  // var somenteStrings = <String> ["Ana", "João"];
  // List lista = [1];
  // List <String> nomes = ['Ana', 'João'];
  // List <int> numeros = [1, 2];
  // var listas = [nomes, nomes];
  // List<Object> l1 = ['Ana', true, 1, 1.2];
  // List<dynamic> l2 = ['Ana', true, 1, 1.2];
  // l1[0].falar();
  // l2[0].falar();
  
  // print(nomes.first.toString());
  // print(nomes.firstOrNull);
  // var ac = 0;
  // for(var i = 0; i < arguments.length; i++){
  //   ac = ac + int.parse(arguments[i]);
  // }
  // print(ac);
  // var numeros = [1, 2.5];
  // var itensDiversos = ['Ana', true, 2, 2.5];
  // var nomes = ['João', 'Pedro', 'Maria'];
  // nomes[0] = 2;
  //for each, enhanced for
  //for/in
  // for(final nome in nomes){
  //   print(nome);
  // }
  // for(int i = 0; i < nomes.length; i++){
  //   print(nomes[i]);
  // }
  // print(nomes[0]);
  // print(nomes[1]);
  // print(nomes[3]);
  // print(nomes.toString());
  // print(nomes.runtimeType);
}
