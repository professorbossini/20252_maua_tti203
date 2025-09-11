import 'package:colecoes/colecoes.dart' as colecoes;
import 'dart:io';

bool existe(Map <String, String> contato, List <Map<String,String>> contatos){
  for(final contatoAtual in contatos){
    if(contatoAtual.keys.single == contato.keys.single){
      return true;
    }  
  } 
  return false; 
}
void main(List<String> arguments) {
  const contato =  {'Ana': '1223444'};
  final contatos = [contato];
  const menu = '1-Cadastrar\n2-Listar\n3-Atualizar\n4-Remover\n5-Sair';
  int opcao;
  do{
    do{
      print(menu);
      opcao = int.parse(stdin.readLineSync()!);
    }while(opcao < 1 || opcao > 5);
    switch(opcao){
      case 1:
        print('Digite o nome');
        final nome = stdin.readLineSync()!;
        print('Digite o número');
        final numero = stdin.readLineSync()!;
        final novoContato = {nome: numero};
        final jaExiste = existe(novoContato, contatos);
        print(!jaExiste ? "Contato adicionado" : "Contato já existe");
        if(!jaExiste){
          contatos.add(novoContato);
        }
      case 2:
        if(contatos.isEmpty){
          print("Você não tem contatos");
        }
        else{
          //Ana: 11322141
          //**************/
          //Rodrigo: 1321413241
          //****************/
          for (final contatoAtual in contatos){
            print('${contatoAtual.keys.single}: ${contatoAtual.values.single}');
            // stdout.writeln('********************');
            print('********************');
            // stdout.write('********************\n');           

          }
        }
      case 3:

      case 4:
      
      case 5:
        print('Até logo');
    }
  }while(opcao != 5);
}
  // var pessoa = {
  //   'nome': 'Ana',
  //   'idade': 18
  // };
  // print(pessoa.entries);
  // print(pessoa.entries.runtimeType);
  // for(final entry in pessoa.entries){
  //   //nome: Ana
  //   //idade: 18
  //   print("${entry.key}: ${entry.value}");
  // }
  // print(pessoa.values);
  // for(final value in pessoa.values){
  //   print(value);
  // }
  //keys, values e entries
  // for(final key in pessoa.keys){
  //   print(key);
  //   //nome: Ana, idade: 18
  //   print('$key: ${pessoa[key]}');
  // }
  // var nome = pessoa['nome'] as String;
  // print(nome.length);
  // var idade = pessoa['idade'] as String;
  // print(idade.length);
  // print(pessoa['nome']);
  // print(pessoa['idade']);
  // print(pessoa['altura'].jsify());
  // print(pessoa['altura']);
  // var pessoa = {
  //   'nome': 'Ana',
  //   'idade': 18,
  //   'altura': '1.8'
  // };
  // print(pessoa.runtimeType);
  // var teste = <Object?, Object?>{};
  // var teste2 = {};
  // teste = 1;
  // var portugues = {'Brasil', 'Portugal'};
  // var europa = {'Alemanha', 'Portugal', 'Espanha'};
  // //Todos os países exceto aqueles em que se fala português e que são europeus (simultaneamente).
  // //union, intersection e difference
  // var resultado = 
  //   portugues.union(europa).difference(portugues.intersection(europa));
  // print(resultado);
  // var A = {1, 2, 3, 4, 5, 6};
  // var B = {1, 3, 7};
  // print(A.union(B));
  // print(A.intersection(B));
  // print(A.difference(B));
  // print(B.difference(A));
  // var numeros = {15, 20};
  // for(final n in numeros){
  //   print(n);
  // }
  // print(numeros.elementAt(0));
  // // var eAgora = {};
  // Set <Object> seila = {"a", 1};
  // Set numeros = {1, 1.2};
  // var l1 = [1, 1, 2];
  // var l2 = [1, 2, 1];
  // var s1 = {1, 1, 2};
  // var s2 = {1, 2, 1};
  // var nomes = {"Ana", "João", null};
  //sets ou conjuntos
  // 1, 2 = 2, 1
  // 1, 2, 2, 3 = 3, 1, 2
  // (String, int, bool, bool) tupla = ('Ana', 18, true, true);
  // print(tupla);
  // print(tupla.runtimeType);
  // print(tupla.$1);
  // print(tupla.$2);
  // print(tupla.$3);
  // print(tupla.$4);
  // var nomes1 = ['Ana', 'Pedro'];
  // nomes1.add(null);
  // nomes1 = null;
  // // nomes1.add(1);

  // var nomes2 = [];
  // nomes2.add(1);
  // nomes2.add("Ana");
  // nomes2.add(null);
  // // const nomes = ['Ana', 'Pedro'];
  // nomes[0] = 'Ana Silva';
  // nomes.add("João");
  // print(nomes);
  // nomes = [];
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
// import 'package:colecoes/colecoes.dart' as colecoes;

// void main(List<String> arguments) {
//   var portugues = {'Brasil', 'Portugal'};
//   var europa = {'Alemanha', 'Portugal', 'Espanha'};
//   var todos = portugues.union(europa);
//   var parte2 = europa.intersection('Portugal');
//   var resultado = todos.difference(parte2);
//   var resultado2 = parte2.difference(resultado);
//   var linhaSoh = portugues.union(europa).difference(portugues.intersection(europa));
  // var A = {1, 2, 3, 4, 5, 6};
  // var B = {7};
  // print(A.union(B));
  // print(A.intersection(B));
  // print(A.difference(B));
  // print(B.difference(A));
  // print(A.difference(A));
  // var numeros = {1, 2};
  // print(numeros.elementAt(0));
  // for(final numero in numeros){
  //   print(numero);
  // }
  // Set<int> set1 = {};
  // var set2 = <String?, String> {};
  // var teste = {};
  // var nomes = {'Ana', 'João'};
  // var paises = {'Brasil', 'Brasil', 'Brasil', 'Brasil', 'Brasil'};
  // print(paises);
  //conjuntos ou sets
  //listas
  //1,2, 3 != 3, 1, 2 != 1, 1, 2, 2, 3, 3
  //conjunto
  //1, 2, 3 = 3, 1, 2 = 1, 1, 2, 2, 3, 3
  //tuplas
  // var tupla = ('Ana', 18, true);
  // (String, int, bool, bool) tupla = ('Ana', 18, true, false);
  // print(tupla.$1);
  // print(tupla.$2);
  // print(tupla.$3);
  // print(tupla.$4);
  // (String, int, bool) t2 = ('Rodrigo', false, 17);

  // print(tupla);
  // print(tupla.runtimeType);
  // List<Object?> val1 = [1, "2", null];
  // List<dynamic> val2 = [1, "2", null];
  // // val1[0].parse("2");
  // val2[1].parse("2");
  // var valores = [1, true, 'String', null];
  // valores.add(1.4);
  // valores.add(null);
  // valores = null;
  // nomes.add(1);
  // nomes.add("abc");
  // nomes.add(true);
  // print(nomes[1].length());
  // print(nomes[2].length());
  // var nomes1 = <String?> ['Ana', 'João'];
  // // List<String> nomes1 = ['Ana', 'João'];
  // nomes1.add(null);
  // //nomes1 = null;

  // const nomes = ['Ana', 'Rodrigo'];
  // nomes[0] = 'Ana Silva';
  // nomes.add('João');
  // print(nomes);
  //nomes = ['Pedro'];
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
//   // print(nomes.runtimeType);
// }
