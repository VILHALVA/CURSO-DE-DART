
void main() {
  
  Cachorro cachorro = Cachorro("Dog", 10.0, 100);
  cachorro.fazerSom();
  cachorro.comer();
  cachorro.brincar();
  print(cachorro);

  Gato gato = Gato("Cat", 10.0);
  gato.fazerSom();
  gato.comer();
  print("Está amigável? ${gato.estaAmigavel()}");
  print(gato);

  // Animal animal = Animal("Rex", 20.0);
  // print(animal);
} 

abstract class Animal {
  String? nome;
  double? peso;

  Animal(this.nome, this.peso);

  void comer() {
    print("$nome comeu!");
  }

  void fazerSom(); // Métodos com corpo vazio.

  @override 
  String toString() {
    return "Animal | Nome: $nome, Peso: $peso";
  }
}

class Cachorro extends Animal {
  int fofura = 0;

  Cachorro(String? nome, double? peso, this.fofura) : super(nome, peso);

  void brincar() {
    fofura += 10;
    print("Fofura do $nome aumentou para $fofura!");
  }

  @override // Reescrita de métodos herdados
  void fazerSom() {
    print("$nome fez au au!");
  }

  @override 
  String toString() {
    return "Cachorro | Nome: $nome, Peso: $peso, Fofura: $fofura";
  }
}

class Gato extends Animal{

  Gato(String? nome, double? peso) : super(nome, peso);

  bool estaAmigavel() {
    return true;
  }

  @override
  void fazerSom() {
    print("$nome fez miaaaaauu!");
  }

  @override 
  String toString() {
    return "Gato | Nome: $nome, Peso: $peso";
  }
}