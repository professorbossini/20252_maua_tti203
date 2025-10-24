import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // instancia de escopo restrito do estado centralizado (bloc)
    final bloc = Provider.of(context);

    return Container(
      //20 pixels de margem esquerda, direita, em cima e embaixo
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailField(bloc),
          passwordField(bloc),
          Container(
            margin: EdgeInsets.only(top: 12.0),
            child: Row(children: [Expanded(child: submitButton())]),
          ),
        ],
      ),
    );
  }

  Widget emailField(Bloc bloc) {
    return StreamBuilder(
      //stream que, quando atualizado, produz um snapshot
      //observe como usamos o stream definido no bloc
      stream: bloc.email,
      //função que, quando chamada, causa a atualização do Widget (TextField,
      //neste caso) empacotado pelo StreamBuilder
      builder: ((context, AsyncSnapshot<String> snapshot) {
        return TextField(
          onChanged: (newValue) {
            bloc.changeEmail(newValue);
          },
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            //dica que aparece quando o usuário clica
            hintText: 'seu@email.com',
            //rótulo flutuante: usuário clica, ele "sobe"
            labelText: 'Endereço de e-mail',
            errorText: snapshot.hasError ? snapshot.error.toString() : null,
          ),
        );
      }),
    );
  }

  Widget passwordField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, AsyncSnapshot<String> snapshot) {
        return TextField(
          onChanged: bloc.changePassword,
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Senha", 
            labelText: "Senha",
            errorText: snapshot.hasError ? snapshot.error.toString() : null
            ),
        );
      },
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {}, //ainda não temos o que fazer, função vazia
      child: Text('Login'),
    );
  }
}
