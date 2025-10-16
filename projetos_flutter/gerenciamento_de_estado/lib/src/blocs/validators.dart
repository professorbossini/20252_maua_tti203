import 'dart:async';

import 'package:email_validator/email_validator.dart';
mixin Validators{
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink){
      if(EmailValidator.validate(email)){
        //adicionar o email ao sink
      }
      else{
        //caso contrário adicionar a mensagem de erro
        //E-mail inválido
      }
    }
  );
}




// class Pessoa{
//   String nome;
// }

// class Aluno extends Pessoa with Validators{

// }