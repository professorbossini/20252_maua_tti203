import 'dart:io';
import 'dart:math';
enum OPCAO {pedra, papel, tesoura, sair}

void exibir(String texto){
  print(texto);
}

int capturarOpcaoUsuario(){
  return int.parse(stdin.readLineSync()!);
}

bool opcaoEhValida(int opcao){
  return opcao >= 1 && opcao <= 4;
}

//OPCAO.values: [pedra, papel, tesoura, sair]
// 1<= opcao <= 4
//vetores são indexados a partir do zero
OPCAO mapearOpcao(int opcao){
  return OPCAO.values[opcao - 1];
}

String calcularResultado(OPCAO opcaoUsuario, OPCAO opcaoComputador){
  if(opcaoUsuario == opcaoComputador) return "Empate";
  const voceVenceu = "Você venceu";
  const computadorVenceu = "Computador venceu";
  if(opcaoUsuario == OPCAO.pedra && opcaoComputador == OPCAO.tesoura) return voceVenceu;  
  if(opcaoUsuario == OPCAO.papel && opcaoComputador == OPCAO.pedra) return voceVenceu;
  if(opcaoUsuario == OPCAO.tesoura && opcaoComputador == OPCAO.papel) return voceVenceu;
  return computadorVenceu;
}


void jogo(){
  int opcaoUsuarioInt;
  OPCAO opcaoUsuario, opcaoComputador;
  do{
    do{
      exibir('1-Pedra\n2-Papel\n3-Tesoura\n4-Sair');
      opcaoUsuarioInt = capturarOpcaoUsuario();
    }while(!opcaoEhValida(opcaoUsuarioInt));
    opcaoUsuario = mapearOpcao(opcaoUsuarioInt);
    switch(opcaoUsuario){
      case OPCAO.sair:
        print ("Ok, até");
      default:
        opcaoComputador = mapearOpcao(Random().nextInt(3) + 1);
        exibir(
          'Você(${opcaoUsuario.name}) VS (${opcaoComputador.name})Computador'
        );
        final resultado = 
          calcularResultado(opcaoUsuario, opcaoComputador);
        exibir(resultado);
        sleep(Duration(seconds: 3));
    }
  }while(opcaoUsuario != OPCAO.sair);
}