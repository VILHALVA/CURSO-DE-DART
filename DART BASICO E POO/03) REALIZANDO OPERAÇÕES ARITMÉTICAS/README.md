# REALIZANDO OPERAÇÕES ARITMÉTICAS
Em Dart, realizar operações aritméticas é direto e segue a mesma lógica básica de outras linguagens de programação. Vamos cobrir as principais operações aritméticas disponíveis:

1. **Adição (+):**
   - Soma dois valores.

   Exemplo:
   ```dart
   int a = 10;
   int b = 5;
   int resultado = a + b;  // resultado = 15
   ```

2. **Subtração (-):**
   - Subtrai um valor de outro.

   Exemplo:
   ```dart
   int a = 10;
   int b = 5;
   int resultado = a - b;  // resultado = 5
   ```

3. **Multiplicação (*):**
   - Multiplica dois valores.

   Exemplo:
   ```dart
   int a = 10;
   int b = 5;
   int resultado = a * b;  // resultado = 50
   ```

4. **Divisão (/):**
   - Divide um valor pelo outro. O resultado é sempre um número de ponto flutuante (double).

   Exemplo:
   ```dart
   double a = 10.0;
   double b = 5.0;
   double resultado = a / b;  // resultado = 2.0
   ```

5. **Resto da Divisão (%):**
   - Retorna o resto da divisão inteira de um valor pelo outro.

   Exemplo:
   ```dart
   int a = 10;
   int b = 3;
   int resultado = a % b;  // resultado = 1
   ```

## Exemplos Completos:
Aqui estão alguns exemplos mais detalhados de operações aritméticas em Dart:

```dart
void main() {
  int a = 10;
  int b = 5;

  // Adição
  int soma = a + b;  // soma = 15

  // Subtração
  int subtracao = a - b;  // subtracao = 5

  // Multiplicação
  int multiplicacao = a * b;  // multiplicacao = 50

  // Divisão
  double divisao = a / b;  // divisao = 2.0 (resultado sempre double)

  // Resto da Divisão
  int resto = a % b;  // resto = 0

  print('Soma: $soma');
  print('Subtração: $subtracao');
  print('Multiplicação: $multiplicacao');
  print('Divisão: $divisao');
  print('Resto da Divisão: $resto');
}
```

## Considerações Adicionais:
- **Prioridade de Operadores:** Assim como na matemática, as operações seguem uma ordem de prioridade padrão: primeiro multiplicação e divisão, depois adição e subtração. Use parênteses para alterar a ordem de avaliação.

- **Tipos de Variáveis:** O tipo dos operandos determina o tipo do resultado para operações como divisão. Certifique-se de usar os tipos apropriados para evitar comportamentos inesperados.

Essas são as principais operações aritméticas disponíveis em Dart. Elas são fundamentais para realizar cálculos simples ou complexos em seus programas.