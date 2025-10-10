import 'package:flutter/material.dart';

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
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        //texto que aparece quando o usuário toca/clica
        hintText: 'seu@email.com',
        //rótulo flutuante, usuário clica, a dica sobe
        labelText: 'Endereço de email'
      ),
    );
  }

  Widget passwordField(){
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Senha',
        labelText: 'Senha',        
      ),
    );
  }

  Widget submitButton(){
    return ElevatedButton(
      onPressed: (){}, 
      child: Text('Login')
    );
  }
}