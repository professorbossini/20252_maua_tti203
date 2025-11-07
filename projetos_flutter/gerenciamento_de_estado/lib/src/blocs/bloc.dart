import 'dart:async';

import 'package:gerenciamento_de_estado/src/blocs/validators.dart';
import 'package:rxdart/rxdart.dart';
class Bloc with Validators{
<<<<<<< HEAD
  final _emailController = BehaviorSubject<String>();
=======
  // final _emailController = StreamController <String>.broadcast();
  final _emailController = BehaviorSubject<String>();
  // final _passwordController = StreamController <String>.broadcast();
>>>>>>> bossini-principal
  final _passwordController = BehaviorSubject<String>();

  Stream <String> get email => _emailController.stream.transform(validateEmail);

  Stream <String> get password => _passwordController.stream.transform(validatePassword);

  Stream <bool> get emailAndPasswordAreOkay => CombineLatestStream.combine2(email, password, (e, p) => true);

  Function(String) get changeEmail => _emailController.sink.add;

  Function(String) get changePassword => _passwordController.sink.add;

  void submitForm(){
    print('${_emailController.value}, ${_passwordController.value}');  
  }

  void dispose(){
    _emailController.close();
    _passwordController.close();
  }
}
// final bloc = Bloc();
