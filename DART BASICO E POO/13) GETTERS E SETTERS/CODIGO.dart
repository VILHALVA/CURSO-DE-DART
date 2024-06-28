/*
Getters e Setters servem para proteger os seus dados!
*/

void main() {
  // String algumaCoisa = "valor";
  
  Pessoa pessoa1 = Pessoa("João", 30, 1.80); 
  Pessoa pessoa2 = Pessoa("Thiago", 28, 1.90);

  print(pessoa1.nome);
  print(pessoa2.nome);

  Pessoa nene = Pessoa.nascer("Enzo", 0.30);
  print(nene.nome);
  print(nene.idade);

  nene.altura = 2.0;
  print(nene.altura);
}

class Pessoa {
  String? nome;
  int? _idade; // _AlgumaCoisa só podem ser acessados de dentro do objeto.
  double _altura;

  Pessoa(this.nome, this._idade, this._altura);

  Pessoa.nascer(this.nome, this._altura) { 
    _idade = 0;
    print("$nome nasceu!");
    dormir();
  }

  void dormir() {
    print("$nome está dormindo!");
  }

  int? get idade => _idade;

  double get altura => _altura;

  set altura(double altura) {
    if (altura > 0.0 && altura < 3.0) {
      _altura = altura;
    }
  }
}