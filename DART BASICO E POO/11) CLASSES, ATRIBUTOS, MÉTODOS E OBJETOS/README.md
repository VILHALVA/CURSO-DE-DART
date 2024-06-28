# CLASSES, ATRIBUTOS, MÉTODOS E OBJETOS
Em Dart, assim como em outras linguagens orientadas a objetos, as classes são fundamentais para organizar o código de maneira estruturada e encapsulada. Vamos explorar como definir classes, seus atributos, métodos e como criar objetos a partir delas.

## Definindo uma Classe
Para definir uma classe em Dart, utilizamos a palavra-chave `class`, seguida pelo nome da classe. Uma classe pode conter atributos (variáveis) e métodos (funções).

### Exemplo de Classe em Dart
```dart
// Definição da classe Pessoa
class Pessoa {
  // Atributos da classe
  String nome;
  int idade;

  // Construtor da classe
  Pessoa(this.nome, this.idade);

  // Método da classe para exibir informações
  void exibirInfo() {
    print('Nome: $nome, Idade: $idade');
  }
}

void main() {
  // Criando objetos da classe Pessoa
  Pessoa pessoa1 = Pessoa('João', 30);
  Pessoa pessoa2 = Pessoa('Maria', 25);

  // Chamando métodos dos objetos
  pessoa1.exibirInfo(); // Saída: Nome: João, Idade: 30
  pessoa2.exibirInfo(); // Saída: Nome: Maria, Idade: 25
}
```

Neste exemplo:
- `Pessoa` é uma classe que possui dois atributos (`nome` e `idade`).
- O construtor `Pessoa(this.nome, this.idade)` é usado para inicializar os atributos `nome` e `idade` no momento da criação do objeto.
- `exibirInfo()` é um método da classe `Pessoa` que imprime informações sobre a pessoa.

## Atributos e Métodos
- **Atributos:** São variáveis que armazenam dados relacionados ao objeto. Em Dart, os atributos de uma classe são declarados diretamente dentro do corpo da classe.

- **Métodos:** São funções que definem o comportamento do objeto. Eles permitem que você execute operações com os dados da classe.

## Construtores
Construtores são métodos especiais usados para criar e inicializar objetos de uma classe. Eles têm o mesmo nome da classe e podem ter parâmetros para definir os valores iniciais dos atributos do objeto.

### Exemplo de Construtor
```dart
class Carro {
  String modelo;
  int ano;

  // Construtor padrão
  Carro(this.modelo, this.ano);

  // Método para exibir informações
  void exibirInfo() {
    print('Carro: $modelo, Ano: $ano');
  }
}

void main() {
  // Criando objetos usando o construtor
  Carro meuCarro = Carro('Fusca', 1970);
  Carro outroCarro = Carro('Gol', 2005);

  meuCarro.exibirInfo(); // Saída: Carro: Fusca, Ano: 1970
  outroCarro.exibirInfo(); // Saída: Carro: Gol, Ano: 2005
}
```

## Objetos e Instâncias
- **Objeto:** É uma instância específica de uma classe. No exemplo acima, `pessoa1` e `pessoa2` são objetos da classe `Pessoa`.
  
- **Instanciação:** É o processo de criação de um objeto a partir de uma classe. Usamos o operador `new` para instanciar uma classe em Dart, embora em versões recentes do Dart, o `new` seja opcional.

## Encapsulamento
Em Dart, a visibilidade dos membros de uma classe pode ser controlada usando modificadores de acesso:

- `public`: Membros são acessíveis de qualquer lugar. O padrão em Dart é ser `public`.
- `private`: Membros são acessíveis apenas dentro da própria classe usando o prefixo `_`.
- `protected`: Não há um modificador `protected` explícito em Dart como em outras linguagens, mas o modificador `_` pode ser usado para alcançar um comportamento similar.

### Exemplo de Encapsulamento
```dart
class ContaBancaria {
  String _numeroConta; // Atributo privado

  // Construtor
  ContaBancaria(this._numeroConta);

  // Método para obter o número da conta
  String get numeroConta => _numeroConta;

  // Método para definir o número da conta
  set numeroConta(String numero) {
    _numeroConta = numero;
  }
}

void main() {
  ContaBancaria conta = ContaBancaria('123456');

  print(conta.numeroConta); // Saída: 123456

  // Tentativa de modificar o número da conta diretamente (erro)
  // conta._numeroConta = '654321'; // Erro: '_numeroConta' é privado dentro de ContaBancaria

  // Modificando usando o método setter
  conta.numeroConta = '654321';
  print(conta.numeroConta); // Saída: 654321
}
```

## Conclusão
Entender como trabalhar com classes, atributos, métodos e objetos em Dart é fundamental para construir aplicações estruturadas e orientadas a objetos. O uso correto de encapsulamento e construtores ajuda a garantir um código organizado e seguro, facilitando a manutenção e o desenvolvimento de software.