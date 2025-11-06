<<<<<<< HEAD
import 'package:flutter/material.dart';
=======
import 'package:flutter/widgets.dart';
>>>>>>> bossini-principal
import 'bloc.dart';

class Provider extends InheritedWidget{

  final bloc = Bloc();
<<<<<<< HEAD

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
=======
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }  
>>>>>>> bossini-principal

  Provider({Key? key, required Widget child}): super(key: key, child: child);

  static Bloc of (BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<Provider>()!.bloc;
  }
<<<<<<< HEAD
=======
  
>>>>>>> bossini-principal
}