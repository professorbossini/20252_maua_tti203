// mixin = conjunto de instruções de código (funções nesse caso)
// que podemos depois "injetar" em uma classe

import 'package:email_validator/email_validator.dart';
import 'dart:async';

mixin Validator {
  // validação do email
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      if (EmailValidator.validate(email)) {
        // se esta tudo certo com o email, adicionamos ao fluxo stream
        sink.add(email);
      } else {
        //caso contrario, adicionamos um erro
        sink.addError("E-mail inválido");
      }
    },
  );

  // validação para o campo de senha
  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (senha, sink) {
      if (senha.length > 3) {
        //única validação: senha tem que ter no mínimo 4 caracteres
        sink.add(senha);
      } else {
        sink.addError("Senha deve ter, pelo menos, 4 caracteres");
      }
    },
  );
}
