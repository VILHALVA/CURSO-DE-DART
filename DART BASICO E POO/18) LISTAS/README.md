# LISTAS
Em Dart, uma lista é uma coleção ordenada de elementos que podem ser de tipos diferentes ou do mesmo tipo. As listas em Dart são dinâmicas, o que significa que podem crescer ou diminuir de tamanho conforme necessário. Vamos explorar como declarar, inicializar e manipular listas em Dart.

## Declarando Listas
Em Dart, existem duas formas principais de declarar uma lista:

### 1. Lista Literal
Uma lista literal é definida usando colchetes `[]` e pode conter zero ou mais elementos separados por vírgulas.

```dart
List<int> numeros = [1, 2, 3, 4, 5];
```

Neste exemplo, `numeros` é uma lista de números inteiros inicializada com cinco elementos.

### 2. Usando o Construtor
Você também pode declarar uma lista usando o construtor `List()`.

```dart
List<String> frutas = List<String>();
frutas.add('Maçã');
frutas.add('Banana');
frutas.add('Morango');
```

Neste exemplo, `frutas` é uma lista de strings inicialmente vazia. Os elementos são adicionados à lista usando o método `add()`.

## Acessando Elementos da Lista
Os elementos de uma lista em Dart são acessados usando o índice do elemento dentro dos colchetes `[]`. O índice começa em zero para o primeiro elemento e vai até `length - 1`.

```dart
print(numeros[0]); // Saída: 1
print(frutas[1]); // Saída: Banana
```

## Operações com Listas
### Adicionar Elementos
Para adicionar elementos a uma lista, você pode usar o método `add()`.

```dart
List<int> numeros = [];
numeros.add(1);
numeros.add(2);
```

### Remover Elementos
Para remover elementos de uma lista, você pode usar o método `remove()` ou `removeAt()`.

```dart
frutas.remove('Banana'); // Remove o elemento 'Banana'
frutas.removeAt(0); // Remove o primeiro elemento da lista
```

### Verificar o Tamanho da Lista
Você pode obter o tamanho da lista usando a propriedade `length`.

```dart
print(frutas.length); // Saída: 2 (após remover um elemento)
```

### Iterar sobre uma Lista
Para iterar sobre os elementos de uma lista, você pode usar um loop `for-in` ou `forEach()`.

```dart
for (var fruta in frutas) {
  print(fruta);
}

frutas.forEach((fruta) {
  print(fruta);
});
```

## Listas com Tipos de Dados Mistas
As listas em Dart podem conter elementos de tipos diferentes, desde que sejam subtipos de `Object`.

```dart
List<dynamic> diversos = ['Texto', 1, 3.14, true];
```

Neste exemplo, `diversos` é uma lista que contém uma string, um inteiro, um double e um boolean.

## Listas Constantes
Você pode criar listas constantes usando a palavra-chave `const`.

```dart
const List<int> numerosPrimos = [2, 3, 5, 7, 11];
```

Listas constantes são imutáveis e seus elementos não podem ser modificados após a inicialização.

## Conclusão
As listas são estruturas de dados fundamentais em Dart e são utilizadas para armazenar coleções de elementos ordenados. Elas oferecem flexibilidade na adição, remoção e acesso aos elementos e são amplamente utilizadas em programação para manipular conjuntos de dados de maneira eficiente e organizada.