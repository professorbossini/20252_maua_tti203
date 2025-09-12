void main(List<String> arguments) {
  var pessoa = <String, dynamic>{'nome': 'Pedro', 'idade': 22};
  //errado
  //for (var prop in pessoa){
  //print(prop);
  //}

  //Iterable de String
  var chaves = pessoa.keys;
  print(chaves.runtimeType);
  for (final propriedade in pessoa.keys) {
    print("Chave: " + propriedade);
    print(pessoa[propriedade]);
  }
  //Iterable de dynamic
  var valores = pessoa.values;
  print(valores.runtimeType);
  for (final valor in valores) {
    print(valor);
  }
  //Iterable de
  var entries = pessoa.entries;
  //MappedIterable<String, MapEntry<String, dynamic>>
  print(entries.runtimeType);
  for (final entry in pessoa.entries) {
    print(entry);
    print(entry.key);
    print(entry.value);
  }
}

// void main(List<String> arguments) {
//   var pessoa = <String, dynamic>{'nome': 'Pedro', 'idade': 22};
//   //String, tipo conhecido em tempo de execução
//   print(pessoa['nome'].runtimeType);
//   print(pessoa['idade'].runtimeType);
//   print(pessoa['altura'].runtimeType);
//   // pessoa['idade'] = "Vinte e dois anos";
//   // print(pessoa['idade'].runtimeType);

//   // var idade = pessoa['idade'] as String;
//   // //int não tem toUpperCase
//   // //erro em tempo de execução
//   // print(idade.toUpperCase());
// }

// // void main(List<String> arguments) {
// //   var pessoa = {'nome': 'Pedro', 'idade': 22};
// //   //não dá
// //   //print(pessoa.nome);
// //   //ok
// //   print(pessoa['nome']);
// //   //ok
// //   print(pessoa['idade']);
// //   //null
// //   print(pessoa['altura']);
// // }

// // void main(List<String> arguments) {
// //   //sem inferência de tipo
// //   Map<String, Object> pessoa = {'nome': 'Pedro', 'idade': 22};
// //   print(pessoa);

// //   //com type annotation
// //   var pessoa2 = <String, Object>{'nome': 'Ana', 'idade': 22};
// //   print(pessoa2);
// // }

// // void main(List<String> arguments) {
// //   var portugues = {'Brasil', 'Portugal'};
// //   var europa = {'Alemanha', 'Portugal', 'Espanha'};
// //   print("\nPaíses em que se fala português\n");
// //   for (final pais in portugues) {
// //     print(pais);
// //   }

// //   print("\nPaíses europeus\n");
// //   for (final pais in europa) {
// //     print(pais);
// //   }

// //   print('Todos os países');
// //   var todos_paises = europa.union(portugues);
// //   print(todos_paises);

// //   print("Países europeus que falam português\n");
// //   var portugues_e_europeus = portugues.intersection(europa);

// //   print(portugues_e_europeus);

// //   print("Países que falam português e não são europeus\n");
// //   var portugues_nao_europeus = portugues.difference(europa);

// //   print(portugues_nao_europeus);

// //   print("Países que são europeus e não falam português\n");
// //   var europeus_nao_falam_portugues = europa.difference(portugues);

// //   print(europeus_nao_falam_portugues);

// //   print(
// //     "Todos os países exceto os em que se fala portugues e que são europeus simultaneamente",
// //   );
// //   print(todos_paises.difference(portugues_e_europeus));
// // }

// // void main(List<String> arguments) {
// //   var pessoa = {'nome': 'Pedro', 'nome': 'Ana'};
// //   print(pessoa);
// // }
