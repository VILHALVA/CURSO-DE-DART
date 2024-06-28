# REESCRITA DE MÉTODOS (POLIMORFISMO)
A reescrita de métodos, também conhecida como sobrescrita de métodos, é um conceito fundamental na programação orientada a objetos que permite que uma classe derivada (subclasse) forneça uma implementação específica de um método que já está definido na classe base (superclasse). Isso é útil quando você precisa modificar ou estender o comportamento de um método da superclasse para atender às necessidades da subclasse. Vamos explorar como realizar a reescrita de métodos em Dart.

## Exemplo Básico de Reescrita de Método
Suponha que temos uma classe base `Animal` com um método `fazerBarulho()`:

```dart
class Animal {
  void fazerBarulho() {
    print('Animal fazendo barulho.');
  }
}
```

Agora, criamos uma classe derivada `Cachorro` que herda de `Animal` e sobrescreve o método `fazerBarulho()` para representar o som de um cachorro:

```dart
class Cachorro extends Animal {
  @override
  void fazerBarulho() {
    print('Au au!');
  }
}
```

Neste exemplo:
- `Animal` é a classe base que define o método `fazerBarulho()`.
- `Cachorro` é a classe derivada que herda de `Animal` e substitui o método `fazerBarulho()` com sua própria implementação usando a anotação `@override`.

## Utilizando a Reescrita de Métodos
Ao criar uma instância da classe `Cachorro` e chamar o método `fazerBarulho()`, a implementação específica da subclasse será executada:

```dart
void main() {
  var rex = Cachorro();
  rex.fazerBarulho(); // Saída: Au au!
}
```

## Chamando o Método da Superclasse
Em alguns casos, é útil chamar o método da superclasse dentro do método sobrescrito da subclasse para aproveitar a lógica da superclasse. Isso é feito usando a palavra-chave `super`.

```dart
class Cachorro extends Animal {
  @override
  void fazerBarulho() {
    super.fazerBarulho(); // Chama o método da superclasse
    print('Au au!');
  }
}
```

Neste exemplo, `super.fazerBarulho()` chama o método `fazerBarulho()` da superclasse `Animal`, e em seguida, `print('Au au!')` é executado, adicionando o som específico do cachorro.

## Considerações
- **Anotação `@override`:** É uma boa prática usar `@override` ao reescrever métodos para garantir que você está realmente substituindo um método da superclasse. Isso ajuda a evitar erros de digitação que poderiam resultar na criação de um novo método em vez de substituir o existente.

- **Polimorfismo:** A reescrita de métodos é uma forma de polimorfismo, onde diferentes classes podem fornecer implementações diferentes de métodos com a mesma assinatura.

- **Modificadores de Acesso:** Os modificadores de acesso (`public`, `private`, `protected`) continuam sendo aplicáveis aos métodos reescritos, permitindo controlar a visibilidade e o acesso aos métodos conforme necessário.

Ao projetar hierarquias de classes em Dart, a reescrita de métodos permite que você adapte o comportamento de métodos herdados para cada classe derivada, promovendo um design flexível e orientado a objetos.
