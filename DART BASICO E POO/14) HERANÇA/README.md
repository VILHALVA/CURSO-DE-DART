# HERANÇA
Em Dart, assim como em muitas outras linguagens de programação orientadas a objetos, a herança é um conceito fundamental que permite que uma classe herde características (atributos e métodos) de outra classe. Isso facilita a reutilização de código e a organização hierárquica de classes. Vamos explorar como funciona a herança em Dart.

## Sintaxe Básica de Herança
Para criar uma relação de herança entre duas classes em Dart, você utiliza a palavra-chave `extends`. Aqui está um exemplo simples de como definir uma classe base e uma classe derivada que herda dela:

```dart
// Classe base (superclasse)
class Animal {
  String nome;
  int idade;

  Animal(this.nome, this.idade);

  void comer() {
    print('$nome está comendo.');
  }
}

// Classe derivada (subclasse) que herda de Animal
class Cachorro extends Animal {
  String raca;

  Cachorro(String nome, int idade, this.raca) : super(nome, idade);

  void latir() {
    print('$nome está latindo.');
  }
}
```

Neste exemplo:
- `Animal` é a classe base (superclasse) que possui atributos `nome` e `idade`, e o método `comer`.
- `Cachorro` é a classe derivada (subclasse) que herda de `Animal` usando `extends`.
- `Cachorro` adiciona um atributo `raca` específico para cachorros e um método `latir`.

## Construtores em Classes Derivadas
Quando uma classe derivada é instanciada, o construtor da classe base pode ser chamado explicitamente usando `super()`. Isso garante que a inicialização dos atributos da classe base ocorra corretamente antes da inicialização dos atributos da classe derivada.

## Uso de Métodos e Atributos da Superclasse
Na classe derivada, você pode acessar métodos e atributos da superclasse usando `super`.

```dart
void main() {
  var rex = Cachorro('Rex', 5, 'Labrador');
  
  rex.comer(); // Método da superclasse
  rex.latir(); // Método da subclasse
  print('${rex.nome} tem ${rex.idade} anos e é da raça ${rex.raca}.');
}
```

Neste exemplo:
- `rex.comer()` chama o método `comer()` da superclasse `Animal`.
- `rex.latir()` chama o método `latir()` da subclasse `Cachorro`.
- `rex.nome`, `rex.idade` e `rex.raca` são atributos acessados diretamente da instância `rex`.

## Sobrescrita de Métodos (Override)
Uma classe derivada pode sobrescrever (override) métodos da superclasse para fornecer uma implementação específica para a subclasse. Isso é feito usando a anotação `@override`.

```dart
class Cachorro extends Animal {
  String raca;

  Cachorro(String nome, int idade, this.raca) : super(nome, idade);

  @override
  void comer() {
    print('$nome está comendo ração.');
  }

  void latir() {
    print('$nome está latindo.');
  }
}
```

No exemplo acima, o método `comer()` da classe `Cachorro` sobrescreve o método `comer()` da classe `Animal`, fornecendo uma implementação específica para cachorros.

## Considerações sobre Herança em Dart
- **Única Herança:** Dart suporta herança única, o que significa que uma classe pode herdar diretamente de apenas uma outra classe.
  
- **Hierarquia de Herança:** Classes podem formar uma hierarquia onde uma classe pode ser a superclasse de várias subclasses, criando uma estrutura de árvore.

- **Encapsulamento e Modificadores:** A herança não afeta o encapsulamento dos membros da classe. Ainda é possível usar modificadores como `public`, `private` e `protected`.

- **Construtores e Herança:** Ao herdar de uma classe, é possível definir construtores na classe derivada que chamam explicitamente o construtor da classe base usando `super()`.

A herança é um conceito poderoso na programação orientada a objetos que permite organizar e reutilizar código de forma eficiente. Ao utilizar herança em Dart, é importante planejar a estrutura hierárquica de suas classes para maximizar a reutilização de código e manter um design claro e coeso.