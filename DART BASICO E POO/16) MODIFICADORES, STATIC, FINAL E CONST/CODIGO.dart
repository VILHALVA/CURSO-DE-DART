class Valores {
   
  static int? vezesClicados; // A variável passa a ser da Classe e não mais do objeto.

}

class Pessoa {

}

void main() {
  
  // Valores.vezesClicado = 2;

  const numero = 3; // const -> em tempo de compilação.
  print(numero);

  final Pessoa pessoa = Pessoa(); // final -> em tempo de execução.
}