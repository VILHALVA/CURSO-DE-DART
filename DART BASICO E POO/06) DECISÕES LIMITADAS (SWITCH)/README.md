# DECISÕES LIMITADAS (SWITCH)
Em Dart, assim como em outras linguagens de programação, você pode usar a estrutura `switch` para tomar decisões com base em múltiplas condições sobre o valor de uma única variável. A estrutura `switch` é especialmente útil quando você precisa comparar uma variável com múltiplos valores possíveis de forma eficiente. Vamos explorar como utilizar o `switch` em Dart:

## Estrutura `switch`
A estrutura `switch` é composta por uma expressão que é comparada com diferentes casos. Cada caso pode ter um valor específico que será comparado com a expressão.

```dart
void main() {
  String diaDaSemana = 'Segunda';

  switch (diaDaSemana) {
    case 'Segunda':
      print('Hoje é segunda-feira.');
      break;
    case 'Terça':
      print('Hoje é terça-feira.');
      break;
    case 'Quarta':
      print('Hoje é quarta-feira.');
      break;
    case 'Quinta':
      print('Hoje é quinta-feira.');
      break;
    case 'Sexta':
      print('Hoje é sexta-feira.');
      break;
    default:
      print('Fim de semana!');
  }
}
```

Neste exemplo:

- A variável `diaDaSemana` é comparada com diferentes casos usando a estrutura `switch`.
- Cada caso (`case`) especifica um valor possível para `diaDaSemana`.
- O `break` é usado para sair do `switch` após cada caso. Se o `break` não for utilizado, a execução continuará nos casos seguintes.
- O `default` é opcional e é executado se nenhum dos casos anteriores corresponder à expressão.

## Uso de `continue` e `break` no `switch`
Além de `break`, você também pode usar `continue` para pular para o próximo caso ou `break` para sair do `switch` dependendo da lógica do seu programa.

```dart
void main() {
  int numero = 5;

  switch (numero) {
    case 1:
      print('Número um');
      break;
    case 2:
      print('Número dois');
      break;
    case 3:
    case 4:
      print('Número três ou quatro');
      break;
    default:
      print('Número não identificado');
  }
}
```

Neste segundo exemplo:

- O caso `3` e `4` são tratados de maneira semelhante, usando um único bloco de código para ambos os casos.
- Isso é possível porque o `break` é usado apenas uma vez após o bloco comum.
- O caso `default` é acionado quando `numero` não corresponde a nenhum dos casos anteriores.

## Considerações Adicionais
- **Comparação de Tipos:** No Dart, a estrutura `switch` também pode ser usada para comparar tipos de variáveis, como `int`, `String`, `enum`, etc.
- **Expressões Complexas:** Você pode usar expressões mais complexas nos casos do `switch`, desde que o tipo de resultado possa ser avaliado em tempo de compilação.
- **Eficiência:** O `switch` é frequentemente mais eficiente do que várias declarações `if-else if` quando se compara uma variável com vários valores possíveis, pois o compilador pode otimizar a verificação.

O `switch` é uma ferramenta poderosa para lidar com decisões baseadas em múltiplos valores de uma variável em Dart, ajudando a manter o código limpo e eficiente.