
import 'dart:io';
import 'dart:math';

void jogoMegaSena() {
  //1- Pedir para o usuário digitar seu jogo
  List<int> jogoUsuario = [];

  while (jogoUsuario.length < 6) {
    print("Digite um dos números do seu jogo:");
    // String?
    var num = int.parse(stdin.readLineSync()!);

    // se numero invalido
    if (num < 1 || num > 60) {
      print("Número deve estar entre 1 e 60");
    } else if (jogoUsuario.contains(num)) {
      // se é repetido
      print("Número já foi digitado");
    } else {
      // número pode ser adicionado
      jogoUsuario.add(num);
    }
  }

  //2 - Gera os números da MegaSena
  Random random = Random();
  List<int> jogoSorteado = [];

  while (jogoSorteado.length < 6) {
    // gerar um numero aleatorio
    int num = random.nextInt(60) + 1; // 1 ate 60
    if (!jogoSorteado.contains(num)) {
      // se o número não é repetido
      jogoSorteado.add(num);
    }
  }

  //3 - Ordenar os jogos e mostrar lado a lado
  jogoSorteado.sort();
  jogoUsuario.sort();
  print("Usuario: $jogoUsuario");
  print("Sorteado: $jogoSorteado");

  // 4- Mostrar quais número e quantos o usuário acertou
  List<int> acertos =
      jogoUsuario.where((n) => jogoSorteado.contains(n)).toList();
  print("Acertos: $acertos");
  print("Total: ${acertos.length}");
}

void main(List<String> arguments) {
  // jogoMegaSena();

  // Testes de Coleção a partir da página ap03:07
  // 2.3 Tupla
  var tupla = ("Ana", 18, true);
  print(tupla); //(Ana, 18, true)
  print(tupla.runtimeType); //(String, int, bool)

  print(tupla.$1); // Ana
  print(tupla.$2); // 18
  print(tupla.$3); // true
  //print(tupla.$4);

  //2.4 Conjuntos: Não aceitam valores repetidos
  var nomes = {"Ana", "João"};
  print(nomes);
  print(nomes.runtimeType); //_Set<String>

  var paises = {"Brasil", "Brasil"};
  print(paises); // imprime Brasil

  // Cria um Mapa
  // Mapa = {chave:valor}
  // Frutas = {banana:15, morango:20, laranja:40}
  var nomes1 = {}; // Mapa <dynamic, dynamic>
  var nomes2 = <String> {}; // Conjunto de Strings
  var alunoPassou = <String, bool> {}; // Mapa <String, bool>; {Joao:true, Mario:false}

  var nomes3 = {'Ana', 'João'};
  print(nomes3.elementAt(0)); // Ana
  
  /*for (int i = 0; i < nomes3.length; i++){
    print(nomes3.elementAt(i));
  }*/

  //for each
  for (final nome in nomes3){
    print(nome);
  }
}