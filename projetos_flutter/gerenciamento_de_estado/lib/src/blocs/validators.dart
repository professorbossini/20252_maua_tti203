// mixin = conjunto de instruções de código (funções)
// que podemos depois "injetar" em uma classe

import 'package:email_validator/email_validator.dart';
import 'dart:async';

mixin Validator{

  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink){ // validação do email
      //transformer representa a formatação atribuida pela função validate()
      if(EmailValidator.validate(email)){  
          // se esta tudo certo com o email, adicionamos ao fluxo stream
          sink.add(email);
      }else{ //caso contrario, adicionamos um erro
          sink.addError("E-mail inválido");
      }
    }
  );

  // validação para o campo de senha
  // validatePassword()
  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (senha, sink){
      if(senha.length > 3){ //única validação: senha tem que ter no mínimo 4 caracteres
        sink.add(senha);
      }else{ // se a senha não tiver pelo menos 4 caracteres
        sink.addError("Senha deve ter, pelo menos, 4 caracteres");
      }
    }
  );

}