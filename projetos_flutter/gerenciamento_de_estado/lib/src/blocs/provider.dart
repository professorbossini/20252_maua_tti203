import 'package:flutter/material.dart';
import 'bloc.dart';

class Provider extends InheritedWidget{
    // construtor
    Provider({Key? key, required Widget child}): super(key: key, child: child);

    // nova instância do bloc
    // aqui estamos criando um objeto global
    final bloc = Bloc();

    @override
    bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

    // nova instancia do bloc com escopo restrito (static)
    static Bloc of (BuildContext context){
      // ! = existe pois o estado centralizado (bloc) pode não conter nenhuma informacao
      // nesse caso retornando nulo, ! indica que queremos esse possível erro
      return context.dependOnInheritedWidgetOfExactType<Provider>()!.bloc;
    }
}
