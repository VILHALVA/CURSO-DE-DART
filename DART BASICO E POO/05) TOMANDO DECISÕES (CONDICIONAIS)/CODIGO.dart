void main() {
  
  double nota = 7.0;

  if (nota < 5) {
    print("Exame! :(");
  } else if (nota == 10) {
    print("Sucesso total!");
  } else if (nota == 9.9) {
    print("Quase sucesso total!");
  } else {
    print("Sucesso! :)");
  }

  bool aprovado = true;
  String info;

  /*
  if (aprovado) {
    info = "Aprovado!";
  } else {
    info = "Reprovado!";
  }
  */

  info = aprovado ? "Aprovado!" : "Reprovado!";

  String? nome;
  String info2 = nome ?? "Não informado!";
  print(info2);

  print("Fim!");
}