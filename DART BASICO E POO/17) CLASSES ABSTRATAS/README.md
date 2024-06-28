# CLASSES ABSTRATAS
Em Dart, uma classe abstrata é uma classe que não pode ser instanciada diretamente e é usada como um modelo para outras classes que estendem dela. Ela pode conter métodos abstratos, ou seja, métodos que são declarados mas não têm implementação na classe abstrata. As classes que estendem a classe abstrata devem implementar todos os métodos abstratos definidos por ela. Vamos explorar como definir e utilizar classes abstratas em Dart.

## Definindo uma Classe Abstrata
Para declarar uma classe como abstrata em Dart, utiliza-se a palavra-chave `abstract` antes da palavra-chave `class`.

```dart
abstract class Animal {
  void fazerBarulho(); // Método abstrato
}
```

Neste exemplo, `Animal` é uma classe abstrata que contém o método abstrato `fazerBarulho()`. Uma classe abstrata pode conter tanto métodos abstratos quanto métodos concretos (com implementação).

## Métodos Abstratos
Um método abstrato é declarado, mas não fornece uma implementação na classe abstrata. Em vez disso, as classes que estendem a classe abstrata devem fornecer uma implementação para todos os métodos abstratos.

```dart
abstract class Animal {
  void fazerBarulho(); // Método abstrato
}
```

## Implementação em Classes Derivadas
Quando uma classe estende uma classe abstrata, ela deve fornecer uma implementação para todos os métodos abstratos da superclasse. Caso contrário, o código não compilará.

```dart
class Cachorro extends Animal {
  @override
  void fazerBarulho() {
    print('Au au!');
  }
}
```

No exemplo acima, `Cachorro` estende a classe abstrata `Animal` e fornece uma implementação para o método abstrato `fazerBarulho()`.

## Exemplo Completo
```dart
abstract class Animal {
  void fazerBarulho(); // Método abstrato
}

class Cachorro extends Animal {
  @override
  void fazerBarulho() {
    print('Au au!');
  }
}

void main() {
  var rex = Cachorro();
  rex.fazerBarulho(); // Saída: Au au!
}
```

## Características das Classes Abstratas
- **Não Podem ser Instanciadas:** Você não pode criar diretamente uma instância de uma classe abstrata usando o operador `new`.
  
- **Podem Conter Implementações:** Além de métodos abstratos, uma classe abstrata pode conter métodos com implementações concretas.

- **Métodos Abstratos:** Métodos declarados sem implementação na classe abstrata e que devem ser implementados por qualquer classe que a estenda.

- **Úteis para Polimorfismo:** Classes abstratas são úteis para definir contratos comuns entre classes que possuem comportamentos similares, mas implementações específicas.

## Conclusão
As classes abstratas são uma ferramenta poderosa na programação orientada a objetos, permitindo a definição de hierarquias de classes onde classes filhas são obrigadas a implementar determinados comportamentos definidos pela classe abstrata. Elas promovem o reuso de código, a organização de classes e a implementação de polimorfismo de forma eficiente em Dart.