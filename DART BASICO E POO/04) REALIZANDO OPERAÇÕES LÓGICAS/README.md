# REALIZANDO OPERAÇÕES LÓGICAS
Em Dart, assim como em muitas outras linguagens de programação, as operações lógicas são fundamentais para controlar o fluxo do programa, fazer comparações e tomar decisões baseadas em condições. Vamos cobrir as principais operações lógicas disponíveis:

1. **AND (&&):**
   - Retorna verdadeiro (`true`) se ambas as expressões forem verdadeiras.

   Exemplo:
   ```dart
   bool a = true;
   bool b = false;

   bool resultado = a && b;  // resultado = false
   ```

2. **OR (||):**
   - Retorna verdadeiro (`true`) se pelo menos uma das expressões for verdadeira.

   Exemplo:
   ```dart
   bool a = true;
   bool b = false;

   bool resultado = a || b;  // resultado = true
   ```

3. **NOT (!):**
   - Inverte o valor lógico da expressão. Se for verdadeiro, torna-se falso; se for falso, torna-se verdadeiro.

   Exemplo:
   ```dart
   bool a = true;

   bool resultado = !a;  // resultado = false
   ```

## Exemplos Completos:
Aqui estão exemplos mais detalhados de operações lógicas em Dart:

```dart
void main() {
  bool a = true;
  bool b = false;

  // Operador AND (&&)
  bool resultadoAnd = a && b;  // resultadoAnd = false

  // Operador OR (||)
  bool resultadoOr = a || b;   // resultadoOr = true

  // Operador NOT (!)
  bool resultadoNotA = !a;     // resultadoNotA = false
  bool resultadoNotB = !b;     // resultadoNotB = true

  print('Operador AND (&&): $resultadoAnd');
  print('Operador OR (||): $resultadoOr');
  print('Operador NOT (!) de a: $resultadoNotA');
  print('Operador NOT (!) de b: $resultadoNotB');
}
```

## Considerações Adicionais:
- **Prioridade de Operadores:** Assim como nas operações aritméticas, as operações lógicas também seguem uma ordem de avaliação padrão. Use parênteses para definir a ordem de avaliação desejada.

- **Tipos de Variáveis:** As operações lógicas geralmente são aplicadas a variáveis booleanas (`bool`), mas em Dart, expressões que não sejam do tipo `bool` também podem ser usadas em contextos lógicos, onde são avaliadas como verdadeiras ou falsas.

- **Curto-Circuito:** Dart, como muitas linguagens, utiliza avaliação de curto-circuito para operadores lógicos (`&&` e `||`). Isso significa que se a primeira parte da expressão já determinar o resultado final, a segunda parte não será avaliada.

Essas operações lógicas são essenciais para criar condições complexas em seu código Dart, permitindo que você tome decisões com base em múltiplas condições ou estados de variáveis.