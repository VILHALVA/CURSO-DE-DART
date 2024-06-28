void main() {
  
  criaBotao("BotaoSair", botaoCriado, cor: "Cinza");

  criaBotao("BotaoCamera", () {
    print("Botão criado por função anônima!");
  });
  // Para passar uma função como parâmetro de outra função, é preciso usar função anônima!
}

void botaoCriado() {
  print("Botão criado!");
}

void criaBotao(String texto, Function criadoFunc, {String? cor, double? largura}) {
  print(texto);
  print(cor ?? "Preto");
  print(largura ?? 10.0);
  criadoFunc();
}