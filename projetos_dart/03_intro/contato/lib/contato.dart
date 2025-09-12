import 'dart:io';

// O mapa que servirá como nosso "banco de dados" para armazenar os contatos.
// A chave é o nome (String) e o valor é o telefone (String).
Map<String, String> contatos = {};

void inicia() {
  // Loop principal que mantém o menu ativo até o usuário decidir sair.
  while (true) {
    print("\n--- Agenda de Contatos ---");
    print("1 - Adicionar Contato (Create)");
    print("2 - Listar Contatos (Read)");
    print("3 - Atualizar Contato (Update)");
    print("4 - Remover Contato (Delete)");
    print("5 - Sair");
    stdout.write(
      "Escolha uma opção: ",
    ); // stdout.write não pula uma linha após o texto.

    // Lê a opção do usuário.
    String? opcao = stdin.readLineSync();

    // Estrutura switch para lidar com a escolha do usuário.
    switch (opcao) {
      case '1':
        adicionarContato();
        break;
      case '2':
        listarContatos();
        break;
      case '3':
        atualizarContato();
        break;
      case '4':
        removerContato();
        break;
      case '5':
        print("Encerrando o programa...");
        return; // 'return' sai da função main e encerra o programa.
      default:
        print("Opção inválida! Por favor, tente novamente.");
    }
  }
}

/// Função para adicionar um novo contato (Create).
void adicionarContato() {
  stdout.write("Digite o nome do contato: ");
  String? nome = stdin.readLineSync();

  if (nome != null && nome.isNotEmpty) {
    if (contatos.containsKey(nome)) {
      print("Erro: Já existe um contato com o nome '$nome'.");
    } else {
      stdout.write("Digite o número do telefone: ");
      String? telefone = stdin.readLineSync();
      if (telefone != null && telefone.isNotEmpty) {
        contatos[nome] = telefone;
        print("Contato '$nome' adicionado com sucesso!");
      } else {
        print("O número de telefone não pode ser vazio.");
      }
    }
  } else {
    print("O nome do contato não pode ser vazio.");
  }
}

/// Função para listar todos os contatos (Read).
void listarContatos() {
  print("\n--- Lista de Contatos ---");
  if (contatos.isEmpty) {
    print("Nenhum contato na agenda.");
  } else {
    // Itera sobre as chaves (nomes) do mapa e imprime cada contato.
    for (var nome in contatos.keys) {
      print("Nome: $nome - Telefone: ${contatos[nome]}");
    }
  }
}

/// Função para atualizar um contato existente (Update).
void atualizarContato() {
  stdout.write("Digite o nome do contato que deseja atualizar: ");
  String? nome = stdin.readLineSync();

  if (nome != null && contatos.containsKey(nome)) {
    stdout.write("Digite o novo número de telefone para '$nome': ");
    String? novoTelefone = stdin.readLineSync();
    if (novoTelefone != null && novoTelefone.isNotEmpty) {
      contatos[nome] = novoTelefone;
      print("Contato '$nome' atualizado com sucesso!");
    } else {
      print("O novo número de telefone не pode ser vazio.");
    }
  } else {
    print("Contato não encontrado.");
  }
}

/// Função para remover um contato (Delete).
void removerContato() {
  stdout.write("Digite o nome do contato que deseja remover: ");
  String? nome = stdin.readLineSync();

  if (nome != null && contatos.containsKey(nome)) {
    contatos.remove(nome);
    print("Contato '$nome' removido com sucesso!");
  } else {
    print("Contato não encontrado.");
  }
}
