import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
class LoginTela extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(18.0),
      child: Column(
        children: [
          emailField(), 
          passwordField(),
          Container(
            margin: EdgeInsets.only(top: 12),
            child: Row(
              children: [
                Expanded(
                  child: submitButton()
                )
              ],
            ),
          ) 
        ],
      ),
    );
  }

  Widget emailField(){
    return StreamBuilder(
      stream: bloc.email, 
      builder:(context, AsyncSnapshot <String> snapshot){
        return TextField(
          onChanged: (novoValor){
            bloc.changeEmail(novoValor);
          },
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            //texto que aparece quando o usuário toca/clica
            hintText: 'seu@email.com',
            //rótulo flutuante, usuário clica, a dica sobe
            labelText: 'Endereço de email',
            errorText: snapshot.hasError ? snapshot.error.toString() : null
          ),
        );
      }
    ); 
  }

  Widget passwordField(){
    return StreamBuilder(
      stream: bloc.password, //bloc.password já vem com o objeto sink que pode ou nao ter um erro
      builder: (context, AsyncSnapshot<String> snapshot) {
        return TextField(
          onChanged: bloc.changePassword,
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Senha",
            labelText: "Senha",
            errorText: snapshot.hasError ? snapshot.error.toString() : null
          )
        );
      },
    ); 
  }

  Widget submitButton(){
    return ElevatedButton(
      onPressed: (){}, 
      child: Text('Login')
    );
  }
}