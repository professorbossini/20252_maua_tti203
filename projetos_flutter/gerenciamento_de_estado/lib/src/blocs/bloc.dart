import 'dart:async';
import 'validators.dart';

class Bloc with Validator{
  //StreamController vem do pacote dart:async
  // Widget(Evento) -> Stream(Função) -> Widget(Atualização)
  final _emailController = StreamController <String> ();
  final _passwordController = StreamController <String> ();

  // getters do objeto Stream
  // email e password são objetos (da classe Stream) que representam 
  // a rotina como um todo
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password => _passwordController.stream.transform(validatePassword);

  // validateEmail(campo.text)
  // retorna efetivamente os valores de texto guardados (do campo de senha e de email)
  // guardados no bloc (estado centralizado)
  // sink guarda o valor atual dos campos de texto que serão validados
  // add, que é o que estamos retornando no get, é uma função que retorna 
  // o valor atual do campo de texto
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  void dispose(){
    _emailController.close();
    _passwordController.close();
  }
}