import 'package:flutter/widgets.dart';
import 'bloc.dart';

class Provider extends InheritedWidget{

  final bloc = Bloc();
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }  

  Provider({Key? key, required Widget child}): super(key: key, child: child);

  static Bloc of (BuildContext context){
    // sound null safety
    return context.dependOnInheritedWidgetOfExactType<Provider>()!.bloc;
  }
  
}