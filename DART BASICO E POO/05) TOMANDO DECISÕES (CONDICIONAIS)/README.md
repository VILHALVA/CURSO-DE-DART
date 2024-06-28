# TOMANDO DECISÕES (CONDICIONAIS)
Em Dart, assim como em muitas linguagens de programação, você pode tomar decisões baseadas em condições usando estruturas condicionais. As estruturas mais comuns para tomar decisões são `if`, `else if` e `else`. Vamos explorar como cada uma delas funciona e como você pode aplicá-las:

## Estrutura `if`
A estrutura `if` é usada para executar um bloco de código se uma condição for verdadeira.

```dart
void main() {
  int idade = 18;

  if (idade >= 18) {
    print('Você é maior de idade.');
  }
}
```

Neste exemplo, o bloco de código dentro do `if` só será executado se `idade` for maior ou igual a 18.

## Estrutura `if`-`else`
A estrutura `if`-`else` permite executar um bloco de código se a condição for verdadeira e outro bloco se a condição for falsa.

```dart
void main() {
  int idade = 16;

  if (idade >= 18) {
    print('Você é maior de idade.');
  } else {
    print('Você é menor de idade.');
  }
}
```

Neste caso, se `idade` for menor que 18, o bloco de código dentro do `else` será executado.

## Estrutura `if`-`else if`-`else`
A estrutura `if`-`else if`-`else` permite verificar múltiplas condições em sequência.

```dart
void main() {
  int idade = 25;

  if (idade < 18) {
    print('Você é menor de idade.');
  } else if (idade >= 18 && idade < 60) {
    print('Você é adulto.');
  } else {
    print('Você é idoso.');
  }
}
```

Neste exemplo, dependendo do valor de `idade`, uma mensagem diferente será impressa. O `else if` permite adicionar condições adicionais para verificar antes de chegar ao `else`, que é o bloco de código executado se nenhuma das condições anteriores for verdadeira.

## Considerações Adicionais
- **Aninhamento de Estruturas Condicionais:** Você pode aninhar estruturas `if` dentro de outras estruturas condicionais para lidar com casos mais complexos.

- **Uso de Operadores Lógicos:** Utilize operadores lógicos como `&&` (AND), `||` (OR) e `!` (NOT) para combinar condições e criar expressões lógicas mais complexas nas suas estruturas condicionais.

- **Curto-Circuito:** O Dart utiliza avaliação de curto-circuito para operadores lógicos (`&&` e `||`), o que significa que a segunda parte da expressão não será avaliada se a primeira parte já determinar o resultado final.

- **Blocos de Código:** Lembre-se de que o Dart utiliza chaves `{}` para delimitar blocos de código associados a estruturas condicionais. Mesmo que o bloco contenha apenas uma instrução, é uma boa prática usar chaves para evitar problemas de legibilidade e manutenção do código.

Essas estruturas condicionais são fundamentais para controlar o fluxo do programa e tomar decisões baseadas em diferentes condições.