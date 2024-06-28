void main() {
  // String algumaCoisa = "valor";
  
  Pessoa pessoa1 = Pessoa("João", 30, 1.80); 
  Pessoa pessoa2 = Pessoa("Thiago", 28, 1.90);

  print(pessoa1.nome);
  print(pessoa2.nome);

  Pessoa nene = Pessoa.nascer("Enzo", 0.30);
  print(nene.nome);
  print(nene.idade);
}

class Pessoa {
  String? nome; 
  int? idade;
  double? altura;
/*
  Pessoa(String nome, int idade, double altura) {
    this.nome = nome; // this.nome refere-se ao objeto e nome refere-se ao parâmetro do construtor.
    this.idade = idade;
    this.altura = altura;
  } // Declarando construtor vazio.
*/

  Pessoa(this.nome, this.idade, this.altura);

  Pessoa.nascer(this.nome, this.altura) { // Construtor nomeado.
    idade = 0;
    print("$nome nasceu!");
    dormir();
  }

  void dormir() {
    print("$nome está dormindo!");
  }

  void aniver(idade) {
    idade++;
  }
}