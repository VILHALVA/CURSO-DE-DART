# FUNÇÕES (DECLARAÇÃO, PARÂMETROS E RETORNO)
Em Dart, funções são blocos de código que executam uma tarefa específica. Elas são fundamentais para organizar e reutilizar código de forma eficiente. Vamos explorar como declarar funções, usar parâmetros e retornar valores em Dart.

## Declaração de Funções
Em Dart, você pode declarar funções usando a palavra-chave `void` para indicar que a função não retorna nenhum valor, ou especificando o tipo de retorno se a função deve retornar um valor específico.

### Exemplo de Função sem Parâmetros e sem Retorno
```dart
void saudacao() {
  print('Olá, mundo!');
}

void main() {
  saudacao(); // Chamando a função saudacao
}
```

Neste exemplo:
- A função `saudacao()` imprime "Olá, mundo!" quando chamada.
- A função `main()` chama `saudacao()` para executar o bloco de código dentro dela.

### Exemplo de Função com Parâmetros e com Retorno
```dart
int soma(int a, int b) {
  return a + b;
}

void main() {
  int resultado = soma(5, 3);
  print('A soma é: $resultado'); // Saída: A soma é: 8
}
```

Neste exemplo:
- A função `soma(int a, int b)` recebe dois parâmetros `a` e `b`, ambos do tipo `int`, e retorna a soma desses dois números.
- Na função `main()`, `soma(5, 3)` é chamada, e o valor retornado é armazenado na variável `resultado` e depois impresso.

## Parâmetros de Função
Os parâmetros permitem que você passe informações para uma função. Em Dart, você pode definir parâmetros posicionais, nomeados ou padrão (opcional).

### Parâmetros Posicionais
```dart
void exibirNome(String primeiroNome, String sobrenome) {
  print('Nome completo: $primeiroNome $sobrenome');
}

void main() {
  exibirNome('João', 'Silva'); // Saída: Nome completo: João Silva
}
```

Neste exemplo:
- A função `exibirNome(String primeiroNome, String sobrenome)` recebe dois parâmetros posicionais: `primeiroNome` e `sobrenome`.
- Ao chamar `exibirNome('João', 'Silva')`, os valores 'João' e 'Silva' são passados para os parâmetros `primeiroNome` e `sobrenome`, respectivamente.

### Parâmetros Nomeados
```dart
void exibirDados({String nome, int idade}) {
  print('Nome: $nome, Idade: $idade');
}

void main() {
  exibirDados(nome: 'Ana', idade: 30); // Saída: Nome: Ana, Idade: 30
}
```

Neste exemplo:
- A função `exibirDados({String nome, int idade})` recebe parâmetros nomeados `{}`. Isso permite que você passe os parâmetros em qualquer ordem, especificando o nome do parâmetro ao chamar a função.
- Ao chamar `exibirDados(nome: 'Ana', idade: 30)`, os valores são atribuídos aos parâmetros correspondentes.

## Retorno de Função
O retorno de uma função define o valor que a função retorna após a execução.

```dart
int calcularCubo(int numero) {
  return numero * numero * numero;
}

void main() {
  int cuboDeDois = calcularCubo(2);
  print('O cubo de 2 é: $cuboDeDois'); // Saída: O cubo de 2 é: 8
}
```

Neste exemplo:
- A função `calcularCubo(int numero)` recebe um parâmetro `numero` e retorna o cubo desse número.
- Ao chamar `calcularCubo(2)`, o valor retornado (8) é armazenado na variável `cuboDeDois` e depois impresso.

## Funções Anônimas (Lambda)
Em Dart, você também pode usar funções anônimas (ou lambdas) para expressar funções em uma forma mais concisa e inline.

### Exemplo de Função Anônima
```dart
void main() {
  // Função anônima que calcula o dobro de um número
  var calcularDobro = (int numero) {
    return numero * 2;
  };

  print('O dobro de 5 é: ${calcularDobro(5)}'); // Saída: O dobro de 5 é: 10
}
```

Neste exemplo:
- `var calcularDobro = (int numero) { return numero * 2; };` define uma função anônima que calcula o dobro de um número.
- `calcularDobro(5)` chama essa função anônima e retorna o dobro de 5.

## Considerações Adicionais
- **Funções Recursivas:** Dart suporta funções recursivas, onde uma função chama a si mesma para realizar um cálculo ou tarefa repetitiva.
- **Escopo de Variáveis:** Variáveis declaradas dentro de uma função têm escopo local, o que significa que elas só são visíveis dentro dessa função.
- **Reutilização de Código:** O uso adequado de funções permite reutilizar código, melhorar a legibilidade e modularidade do seu programa.

Esses conceitos são fundamentais para entender como trabalhar com funções em Dart, permitindo que você escreva código mais organizado e eficiente.