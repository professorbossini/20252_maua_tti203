import 'dart:io';
import 'dart:math';
//obrigatório usar enum e geração de valores aleatórios

enum OPCAO{pedra, papel, tesoura, sair}

void exibe(String texto){
  print(texto);
}

int pegaOpcaoDoUsuario(){
  return int.parse(stdin.readLineSync()!); 
}

bool opcaoEhValida(int opcao){
  return opcao >= 1 && opcao <= 4;
}

//OPCAO.values: [pedra, papel, tesoura, sair]
// opcao esta entre 1 e 4
OPCAO mapeiaOpcao(int opcao){
  return OPCAO.values[opcao - 1];
}

String calculaResultado (OPCAO opcaoUsuario, OPCAO opcaoComputador){
  if(opcaoUsuario == opcaoComputador) return "Empate";
  const voceVenceu = "Você venceu";
  const computadorVenceu = "Computador venceu";
  if(opcaoUsuario == OPCAO.pedra && opcaoComputador == OPCAO.tesoura) return voceVenceu;
  if(opcaoUsuario == OPCAO.papel && opcaoComputador == OPCAO.pedra)return voceVenceu;
  if(opcaoUsuario == OPCAO.tesoura && opcaoComputador == OPCAO.papel) return voceVenceu;
  return computadorVenceu;
}

void jogo(){
  int opcaoUsuarioInt;
  OPCAO opcaoUsuario, opcaoComputador;
  do{
    do{
      exibe('1-Pedra\n2-Papel\n3-Tesoura\n4-Sair');
      opcaoUsuarioInt = pegaOpcaoDoUsuario();
    }while(!opcaoEhValida(opcaoUsuarioInt));
    opcaoUsuario = mapeiaOpcao(opcaoUsuarioInt);
    switch(opcaoUsuario){
      case OPCAO.sair:
        exibe("Até");
      default:
        opcaoComputador = mapeiaOpcao(Random().nextInt(3) + 1);
        //Você(pedra) VS (pedra)Computador
        exibe('Você(${opcaoUsuario.name}) VS (${opcaoComputador.name})Computador');
        final resultado = calculaResultado(opcaoUsuario, opcaoComputador);
        exibe(resultado);
        sleep(Duration(seconds: 3));
    }
  }while(opcaoUsuario != OPCAO.sair);

void exibe(String texto){
  print(texto);
}
int pegaOpcaoDoUsuario(){
  return int.parse(stdin.readLineSync()!);
}

bool opcaoEhValida(int op){
  return op >= 1 && op <= 4;  
}
//OPCAO.values: [pedra, papel, tesoura, sair]
//usuário digita valores entre 1 e 4
OPCAO mapeiaOpcao(int op){
  return OPCAO.values[op - 1];
}
//Empate, Você venceu, Computador venceu
String decideResultado(OPCAO opcaoUsuario, OPCAO opcaoComputador){
  if (opcaoUsuario == opcaoComputador) return "Empate";
  const voceVenceu = 'Você venceu';
  const computadorVenceu = 'Computador venceu';
  if(opcaoUsuario == OPCAO.pedra && opcaoComputador == OPCAO.tesoura) return voceVenceu;
  if(opcaoUsuario == OPCAO.papel && opcaoComputador == OPCAO.pedra)return voceVenceu;
  if(opcaoUsuario == OPCAO.tesoura && opcaoComputador == OPCAO.papel)return voceVenceu;
  return computadorVenceu;  
}
void jogo(){
  int opcaoUsuarioInt;
  OPCAO opcaoUsuario, opcaoComputador;
  do{
    do{
      exibe('1-pedra\n2-papel\n3-tesoura\n4-sair');
      opcaoUsuarioInt = pegaOpcaoDoUsuario();
    }while(!opcaoEhValida(opcaoUsuarioInt));
    opcaoUsuario = mapeiaOpcao(opcaoUsuarioInt);
    switch(opcaoUsuario){
      case OPCAO.sair:
      exibe("Ok, Até");
      default:
      opcaoComputador = mapeiaOpcao(Random().nextInt(3) + 1);
      //Você(pedra) VS (tesoura)Computador
      exibe('Você(${opcaoUsuario.name}) VS (${opcaoComputador.name})Computador');
      final resultado = decideResultado(opcaoUsuario, opcaoComputador);
      exibe(resultado);
      sleep(Duration(seconds: 3));
    }
  }while(opcaoUsuario != OPCAO.sair);
}
