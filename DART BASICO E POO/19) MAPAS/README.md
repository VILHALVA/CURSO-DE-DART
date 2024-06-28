# MAPAS
Em Dart, um mapa é uma coleção de pares chave-valor, onde cada chave é única dentro do mapa e cada chave está associada a um valor específico. Vamos explorar como declarar, inicializar e manipular mapas em Dart.

## Declarando Mapas
Em Dart, existem duas formas principais de declarar um mapa:

### 1. Mapa Literal
Um mapa literal é definido usando chaves `{}` e pode conter zero ou mais pares chave-valor separados por vírgulas. Cada par chave-valor é separado por `:` onde a chave está à esquerda e o valor à direita.

```dart
Map<String, dynamic> pessoa = {
  'nome': 'João',
  'idade': 30,
  'altura': 1.75,
};
```

Neste exemplo, `pessoa` é um mapa que contém informações sobre uma pessoa, onde `'nome'`, `'idade'` e `'altura'` são chaves e `'João'`, `30` e `1.75` são os valores correspondentes.

### 2. Usando o Construtor
Você também pode declarar um mapa usando o construtor `Map()`.

```dart
Map<String, int> pontos = Map<String, int>();
pontos['Alice'] = 95;
pontos['Bob'] = 88;
pontos['Carol'] = 92;
```

Neste exemplo, `pontos` é um mapa que associa nomes a pontos inteiros. Os elementos são adicionados ao mapa usando a notação de colchetes `[]`.

## Acessando Elementos do Mapa
Os elementos de um mapa em Dart são acessados usando a chave dentro dos colchetes `[]`.

```dart
print(pessoa['nome']); // Saída: João
print(pontos['Bob']); // Saída: 88
```

## Operações com Mapas
### Adicionar ou Atualizar Elementos
Para adicionar ou atualizar elementos em um mapa, você usa a notação de colchetes `[]`.

```dart
pessoa['peso'] = 70;
pontos['Bob'] = 90; // Atualiza o valor de 'Bob' para 90
```

### Remover Elementos
Para remover um elemento de um mapa, você pode usar o método `remove()`.

```dart
pessoa.remove('altura'); // Remove o elemento com a chave 'altura'
```

### Verificar o Tamanho do Mapa
Você pode obter o número de pares chave-valor em um mapa usando a propriedade `length`.

```dart
print(pessoa.length); // Saída: 2 (após remover um elemento)
```

### Verificar se uma Chave Existe
Para verificar se uma chave existe em um mapa, use o método `containsKey()`.

```dart
if (pessoa.containsKey('idade')) {
  print('A chave "idade" existe no mapa.');
}
```

### Iterar sobre um Mapa
Para iterar sobre os pares chave-valor em um mapa, você pode usar um loop `for-in`.

```dart
for (var chave in pessoa.keys) {
  print('$chave: ${pessoa[chave]}');
}
```

## Mapas com Tipos de Dados Mistas
Mapas em Dart podem ter chaves e valores de diferentes tipos, desde que sejam subtipos de `Object`.

```dart
Map<dynamic, dynamic> variados = {
  'nome': 'Alice',
  25: true,
  true: 3.14,
};
```

Neste exemplo, `variados` é um mapa que contém chaves e valores de diferentes tipos.

## Mapas Constantes
Você pode criar mapas constantes usando a palavra-chave `const`.

```dart
const Map<String, String> cores = {
  'primeira': 'vermelho',
  'segunda': 'verde',
  'terceira': 'azul',
};
```

Mapas constantes são imutáveis e seus elementos não podem ser modificados após a inicialização.

## Conclusão
Mapas são estruturas de dados fundamentais em Dart e são utilizados para mapear chaves a valores associados. Eles oferecem flexibilidade na adição, remoção e acesso aos elementos por meio de suas chaves únicas. Mapas são frequentemente utilizados para representar dados estruturados de forma organizada e eficiente em aplicações Dart.