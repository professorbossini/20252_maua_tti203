import 'dart:async';
import 'validators.dart';
import 'package:rxdart/rxdart.dart';


class Bloc with Validators{
  //StreamController vem do pacote dart:async
  // Widget(Evento) -> Stream(Função) -> Widget(Atualização)
  final _emailController = StreamController <String>.broadcast();
  final _passwordController = StreamController <String>.broadcast();

  Stream<bool> get emailPasswordAreOk => CombineLatestStream.combine2(email, password, (e, p) => true);

  // email e password são objetos (da classe Stream) que consideram os dados de email e senha já validados
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password => _passwordController.stream.transform(validatePassword);

  // sink guarda o valor de email/senha no estado centralizado (bloc)
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  // desaloca a memória utilizada para os controllers
  void dispose(){
    _emailController.close();
    _passwordController.close();
  }
}
//final bloc = Bloc();