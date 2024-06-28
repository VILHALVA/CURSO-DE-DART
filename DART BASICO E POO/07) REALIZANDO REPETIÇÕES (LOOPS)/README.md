# REALIZANDO REPETIÇÕES (LOOPS)
Em Dart, assim como em muitas outras linguagens de programação, você pode realizar repetições usando estruturas de loop para executar um bloco de código repetidamente enquanto uma condição específica for verdadeira. Vamos explorar as principais estruturas de repetição disponíveis em Dart: `for`, `while` e `do-while`.

## Estrutura `for`
A estrutura `for` é usada quando você sabe exatamente quantas vezes deseja repetir um bloco de código.

```dart
void main() {
  // Exemplo de for para imprimir números de 1 a 5
  for (int i = 1; i <= 5; i++) {
    print(i);
  }
}
```

Neste exemplo:

- `int i = 1;` inicializa a variável de controle `i`.
- `i <= 5;` é a condição de continuação do loop. Enquanto `i` for menor ou igual a 5, o loop continuará a ser executado.
- `i++` é o incremento de `i` após cada iteração do loop.

## Estrutura `while`
A estrutura `while` executa um bloco de código enquanto uma condição especificada for verdadeira.

```dart
void main() {
  int contador = 1;

  // Exemplo de while para imprimir números de 1 a 5
  while (contador <= 5) {
    print(contador);
    contador++;
  }
}
```

Neste exemplo:

- `while (contador <= 5)` é a condição que controla a execução do loop. Enquanto `contador` for menor ou igual a 5, o bloco de código dentro do `while` será executado.
- `contador++` incrementa o valor de `contador` após cada iteração, garantindo que o loop eventualmente termine quando a condição não for mais verdadeira.

## Estrutura `do-while`
A estrutura `do-while` é semelhante ao `while`, mas garante que o bloco de código seja executado pelo menos uma vez, mesmo que a condição seja falsa desde o início.

```dart
void main() {
  int contador = 1;

  // Exemplo de do-while para imprimir números de 1 a 5
  do {
    print(contador);
    contador++;
  } while (contador <= 5);
}
```

Neste exemplo:

- `do { ... } while (contador <= 5);` executa primeiro o bloco de código dentro do `do` e depois verifica a condição no `while`. Isso garante que o código dentro do bloco `do` seja executado pelo menos uma vez.

## Considerações Adicionais
- **Uso de Break e Continue:** Assim como em outras linguagens, você pode usar `break` para sair de um loop prematuramente e `continue` para pular para a próxima iteração do loop.
  
- **Aninhamento de Loops:** Você pode aninhar loops dentro de outros loops em Dart para executar repetições mais complexas.

- **Eficiência:** Escolha a estrutura de loop mais apropriada com base na sua lógica de programa e na necessidade de garantir que o código seja executado pelo menos uma vez.

Essas estruturas de repetição são fundamentais para controlar o fluxo do programa e executar blocos de código repetidamente com base em condições específicas em Dart.