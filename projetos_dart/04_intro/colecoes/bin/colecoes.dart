
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

  // 2.10 Copiando Coleções
  // Não é uma cópia
  var nomes = ['Ana','Pedro']; // nomes aponta para o endereco x
  var copia = nomes; // copia aponta para o mesmo endereco que nomes
  copia[0] = 'Ana Maria';
  print(nomes); // [Ana Maria, Pedro]
  print(copia); // [Ana Maria, Pedro]

  // Gerando uma cópia de fato com o operador Spread
  var copiaDeNomes = [...nomes];
  nomes[0] = 'Evandro';
  print(nomes); //['Evandro','Pedro']
  print(copiaDeNomes); //['Ana Maria','Pedro']

  // // 2.9 Operador Spread
  // // Sem utilizar o Spread
  // var nomes1 = ['Ana','Pedro'];
  // var nomes2 = ['Cristina', nomes1]; 
  // // nomes2 = ['Cristina', ['Ana','Pedro']], nomes2.length = 2
  // // Usar o Spread = divide os dados da lista nomes1 pegando cada dado
  // var nomes3 = ['Cristina', ...nomes1];
  // // nomes3 = ['Cristina', 'Ana', 'Pedro'], nomes3.length = 3
  // print(nomes2);
  // print(nomes3);

  // // 2.8 Collection-for
  // var nomes1 = ['Ana', 'Pedro'];
  // var nomes2 = ['Cristina',
  //   for(var nome in nomes1)
  //     nome
  // ];
  // print(nomes2); // ['Cristina', 'Ana', 'Pedro']

  // // 2.7 Collection-if
  // var idadePedro = 17;
  // var idadeCristina = 18;
  // var maioresIdade = [
  //   'Ana',
  //   'Joao',
  //   if(idadePedro >= 18) 'Pedro',
  //   if(idadeCristina >= 18) 'Cristina'
  // ];
  // print(maioresIdade); //['Ana','Joao','Cristina']

  //2.6 Coleção de Coleções
  // filmes = Lista de Mapas, cada filme é representado por uma Mapa
  // var filmes = <Map<String,dynamic>>[];
  // print("Titulo?");
  // String? titulo = stdin.readLineSync(); //String?
  // print("Genero?");
  // String? genero = stdin.readLineSync();
  // var notas = [5,5];
  // filmes.add({'titulo':titulo, 'genero':genero, 'notas':notas});
  // print(filmes);
  
  // jogoMegaSena();

  // // Testes de Coleção a partir da página ap03:07
  // // 2.3 Tupla
  // var tupla = ("Ana", 18, true);
  // print(tupla); //(Ana, 18, true)
  // print(tupla.runtimeType); //(String, int, bool)

  // print(tupla.$1); // Ana
  // print(tupla.$2); // 18
  // print(tupla.$3); // true
  // //print(tupla.$4);

  // //2.4 Conjuntos: Não aceitam valores repetidos
  // var nomes = {"Ana", "João"};
  // print(nomes);
  // print(nomes.runtimeType); //_Set<String>

  // var paises = {"Brasil", "Brasil"};
  // print(paises); // imprime Brasil

  // // Cria um Mapa
  // // Mapa = {chave:valor}
  // // Frutas = {banana:15, morango:20, laranja:40}
  // var nomes1 = {}; // Mapa <dynamic, dynamic>
  // var nomes2 = <String> {}; // Conjunto de Strings
  // var alunoPassou = <String, bool> {}; // Mapa <String, bool>; {Joao:true, Mario:false}

  // var nomes3 = {'Ana', 'João'};
  // print(nomes3.elementAt(0)); // Ana
  
  // /*for (int i = 0; i < nomes3.length; i++){
  //   print(nomes3.elementAt(i));
  // }*/

  // //for each
  // for (final nome in nomes3){
  //   print(nome);
  // }
}