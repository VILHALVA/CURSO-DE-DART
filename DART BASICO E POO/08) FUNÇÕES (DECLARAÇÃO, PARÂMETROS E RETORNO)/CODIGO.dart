void main() {

  printIntro();

  calcSoma(10.0, 15.0);
  double resMult = calcMult(10.0, 15.0);
  print(resMult);

  print(calcAreaCiruclo(5.0));
}

void printIntro () {
  print("Seja bem-vindo(a)!");
  print("Escolha a opção!");
}

void calcSoma(double x, double y) {
  double res = x + y;
  print(res);
}

double calcMult(double x, double y) { // Quando usar return dentro de uma função é obrigatório especificar o tipo de retorno antes do nome da função!
  double res = x * y;
  return res;
}

double calcAreaCiruclo(double raio) => 3.14 * raio * raio; // A flecha (=>) indica return!
