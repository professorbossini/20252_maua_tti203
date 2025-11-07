abstract class Animal{
  final _amigos = <Animal> [];
  String _nome;
  Animal(this._nome);

  void fazerAmizade(Animal a);

  void adicionar(Animal a){
    _amigos.add(a);
  }

  @override
  String toString() {
    return _nome;
  }

  void exibir(){
    print(_amigos);
  }
}
class Cachorro extends Animal{
  @override
  void fazerAmizade(Animal a) {
    adicionar(a);
  }
  Cachorro(super._nome);
}
class Papagaio extends Animal{
  void fazerAmizade(Animal a){
    adicionar(a);
  }
  Papagaio(super._nome);
}

class Gato extends Animal{
  Gato(super._nome);

  @override
  void fazerAmizade(covariant Gato a) {
    adicionar(a);
  }
}

void main(){
  final c1 = Cachorro('Fiona');
  final p1 = Papagaio('Juca');
  final g1 = Gato('Kiss');
  final g2 = Gato('Mimosa');
  c1.fazerAmizade(p1);
  p1.fazerAmizade(c1);
  g1.fazerAmizade(g2);
  c1.exibir();
  p1.exibir();
  g1.exibir();
}
