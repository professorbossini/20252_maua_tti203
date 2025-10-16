//mixin != classe
// mixin vai ser um conjunto de funções que pode ser "injetado", semelhante a herança

// importamos um pacote com as funções para validação de email já prontas
import 'package:email_validator/email_validator.dart';
import 'dart:async';

mixin Validators{

  // Validator para o email
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    // email = valor atual do campo de texto
    // sink = valor do email no fluxo stream, ou seja, o valor dele no estado centralizado (Bloc)
    handleData: (email, sink) {
      // Verificamos se o valor no campo email está na formatação esperada
      if(EmailValidator.validate(email)){
          // se o email estiver na formatação, adicionamos ao sink e o fluxo continua
          sink.add(email);
      }else{ // se a formatação estiver errada
          sink.addError("E-mail inválido");
      }
    }
  );

  // Validator para a senha
  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (senha, sink){
      // verifica se a senha tem no mínimo 4 caracteres para ser considerada válida
      if(senha.length > 3){
        sink.add(senha);
      }else{ // caso seja inválida
        sink.addError("Senha deve ter, pelo menos, 4 caracteres");
      }
    }
  );
}