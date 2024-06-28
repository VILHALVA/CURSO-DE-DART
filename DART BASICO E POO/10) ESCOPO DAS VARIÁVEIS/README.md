# ESCOPO DAS VARIÁVEIS
Em Dart, o escopo das variáveis refere-se à visibilidade e à acessibilidade dessas variáveis dentro do código. Entender o escopo das variáveis é crucial para evitar conflitos de nome, garantir a segurança e a clareza do código. Vamos explorar os principais tipos de escopo em Dart: escopo global, escopo de função e escopo de bloco.

## Escopo Global
Variáveis declaradas fora de qualquer função ou classe têm escopo global. Isso significa que elas são visíveis em todo o arquivo Dart onde foram declaradas.

### Exemplo de Escopo Global
```dart
// Variável global
int numeroGlobal = 10;

void main() {
  print(numeroGlobal); // Saída: 10
  outraFuncao(); // Chamando outra função
}

void outraFuncao() {
  print(numeroGlobal); // Saída: 10
}
```

Neste exemplo:
- `numeroGlobal` é uma variável global declarada fora de qualquer função.
- Ela pode ser acessada tanto na função `main()` quanto na função `outraFuncao()`.

## Escopo de Função
Variáveis declaradas dentro de uma função têm escopo local àquela função. Elas só são visíveis e acessíveis dentro do bloco de código da função onde foram declaradas.

### Exemplo de Escopo de Função
```dart
void main() {
  // Variável local dentro de main()
  int numero = 5;

  print(numero); // Saída: 5
  outraFuncao();
}

void outraFuncao() {
  // Variável local dentro de outraFuncao()
  String mensagem = 'Olá, mundo!';

  print(mensagem); // Saída: Olá, mundo!
  // print(numero); // Erro: 'numero' não é definido neste escopo
}
```

Neste exemplo:
- `numero` é uma variável local dentro da função `main()`. Ela só é acessível dentro de `main()`.
- `mensagem` é uma variável local dentro da função `outraFuncao()`. Ela só é acessível dentro de `outraFuncao()`.

## Escopo de Bloco
Blocos de código são delimitados por chaves `{}` e podem conter variáveis que têm escopo apenas dentro desse bloco específico. Isso é comum em estruturas condicionais (`if`, `else`, `switch`) e de repetição (`for`, `while`, `do-while`).

### Exemplo de Escopo de Bloco
```dart
void main() {
  // Exemplo de escopo de bloco com if-else
  bool condicao = true;

  if (condicao) {
    // Variável local dentro do bloco if
    int numero = 10;
    print(numero); // Saída: 10
  } else {
    // Variável local dentro do bloco else
    String mensagem = 'Condição é falsa';
    print(mensagem); // Saída: Condição é falsa
  }

  // print(numero); // Erro: 'numero' não é definido neste escopo
  // print(mensagem); // Erro: 'mensagem' não é definida neste escopo
}
```

Neste exemplo:
- `numero` é uma variável local dentro do bloco `if`. Ela só é acessível dentro deste bloco.
- `mensagem` é uma variável local dentro do bloco `else`. Ela só é acessível dentro deste bloco.
- Fora do bloco `if-else`, tentar acessar `numero` ou `mensagem` resultaria em erro de compilação porque elas não existem nesse escopo.

## Considerações Adicionais
- **Variáveis Locais e Globais:** Preferir variáveis locais sempre que possível ajuda a evitar problemas de colisão de nomes e torna o código mais fácil de entender e manter.
- **Escopo de Parâmetros:** Os parâmetros de uma função têm escopo local àquela função e só são visíveis dentro do corpo da função.
- **Visibilidade e Segurança:** Entender o escopo das variáveis não apenas melhora a organização do código, mas também contribui para a segurança e a previsibilidade do comportamento do programa.

Dominar o escopo das variáveis em Dart é essencial para escrever código eficiente e claro, garantindo que cada variável seja acessada apenas onde e quando necessário.