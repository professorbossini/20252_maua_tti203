import 'dart:async';

import 'package:email_validator/email_validator.dart';

mixin Validators{
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      //escreva esse if/else
      //se o email for valido, adicionar o email ao sink
      //caso contrario, adicionar a mensagem "E-mail inválido" ao sink, porém como erro
      if(EmailValidator.validate(email)){
        sink.add(email);
      }  
      else{
        sink.addError('E-mail inválido');
      }
    },
  );

  //validador de senha (senhas precisam ter, pelo menos, quatro caracteres, porém usando o pacote RegExp)
  

}




// mixin Outro{
//   a(){

//   }
// }

// class Pessoa{

// }

// class Aluno extends Pessoa with Validators, Outro{

// }