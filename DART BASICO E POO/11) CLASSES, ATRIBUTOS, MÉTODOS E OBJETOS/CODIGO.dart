void main() {
  // String algumaCoisa = "valor";
  
  Pessoa pessoa1 = Pessoa(); // Instanciado objeto.
  pessoa1.nome = "João";
  pessoa1.idade = 30;
  pessoa1.altura = 1.80;

  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = "Thiago";
  pessoa2.idade = 28;
  pessoa2.altura = 1.90;

  print(pessoa1.nome);
  print(pessoa2.nome);

  print(pessoa1.idade);
  pessoa1.aniver(pessoa1.idade);
  print(pessoa1.idade);

  pessoa2.dormir();

}

class Pessoa {
  String? nome; // Atributos.
  int? idade;
  double? altura;

  void dormir() {
    print("$nome está dormindo!");
  }

  void aniver(idade) {
    idade++;
  }
}