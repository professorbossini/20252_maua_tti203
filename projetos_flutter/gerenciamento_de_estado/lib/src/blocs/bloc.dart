import 'dart:async';
import 'validators.dart';

// Representa o estado centralizado da aplicação
// Bloc: Widget(Evento) > Stream(Função) > Widget

class Bloc with Validators {
  // criamos dois controllers para guardar/manipular os valores nos campos de texto
  // _ = private
  final _emailController = StreamController<String>();
  final _senhaController = StreamController<String>();

  // a função dentro da propriedade stream é um objeto da classe Stream e, nesse caso, recebe uma String como parâmetro
  Stream<String> get email => _emailController.stream.transform(validateEmail); // retorna a rotina (stream) executada em cada controller
  Stream<String> get senha => _senhaController.stream.transform(validatePassword);

  // retorna a função que faz parte da rotina (stream), guardada dentro da propriedade sink
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _senhaController.sink.add;

  // desalocar a memória após utilizar o controller
  void dispose(){
    _emailController.close();
    _senhaController.close();
  }
}
