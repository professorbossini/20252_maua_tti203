abstract class Animal{
  final _amigos = [];
  String _nome;
  Animal(this._nome);

  void fazerAmizade (Animal a);

  void adicionar(Animal a){
    _amigos.add(a);
  }

  String toString(){
    return _nome;
  }

  void exibir(){
    print(_amigos);
  }
}

class Cachorro extends Animal{
  Cachorro(super._nome);

  @override
  void fazerAmizade(Animal a){
    adicionar(a);
  }
}

class Papagaio extends Animal{
  Papagaio(super._nome);

  @override
  void fazerAmizade(Animal a) {
    adicionar(a);
  }
}

class Gato extends Animal{
  Gato(super._nome);

  @override
  void fazerAmizade(covariant Gato a) {
    adicionar(a);
  }
}



void main(){
  final c1 = Cachorro('Odie');
  final p1  = Papagaio('Luna');
  final g1 = Gato('Garfield');
  final g2 = Gato('Outro');
  c1.fazerAmizade(g1);
  c1.fazerAmizade(p1);
  p1.fazerAmizade(c1);
  g1.fazerAmizade(g2);
  g1.fazerAmizade(g2);
  c1.exibir();
  p1.exibir();
  g1.exibir();
}





