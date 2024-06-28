# GETTERS E SETTERS
Em Dart, os getters e setters são métodos especiais que permitem acessar e modificar os atributos privados de uma classe de forma controlada. Eles são úteis para implementar a encapsulação de dados, garantindo que o acesso aos atributos seja feito de maneira segura e controlada, mesmo quando esses atributos são privados (`_`). Vamos explorar como definir e usar getters e setters em Dart.

## Getters e Setters Simples
### Exemplo de Classe com Getters e Setters
```dart
class Pessoa {
  String _nome; // Atributo privado

  // Getter para obter o valor do atributo _nome
  String get nome => _nome;

  // Setter para definir o valor do atributo _nome
  set nome(String valor) {
    if (valor.isNotEmpty) {
      _nome = valor;
    }
  }
}
```

Neste exemplo:
- `Pessoa` é uma classe que possui um atributo privado `_nome`.
- `get nome` é um getter que retorna o valor do atributo `_nome`.
- `set nome(String valor)` é um setter que define o valor do atributo `_nome`, com uma verificação opcional para garantir que o valor não esteja vazio.

## Utilização de Getters e Setters
### Exemplo de Uso dos Getters e Setters
```dart
void main() {
  var pessoa = Pessoa();

  // Usando o setter para definir o nome
  pessoa.nome = 'João';

  // Usando o getter para obter o nome
  print(pessoa.nome); // Saída: João

  // Tentativa de usar setter com valor vazio (não altera o valor)
  pessoa.nome = '';
  print(pessoa.nome); // Continua sendo: João
}
```

Neste exemplo:
- Criamos um objeto `pessoa` da classe `Pessoa`.
- Usamos o setter `pessoa.nome = 'João'` para definir o nome da pessoa como "João".
- Usamos o getter `print(pessoa.nome)` para obter e imprimir o nome da pessoa.

## Getters e Setters com Lógica Adicional
Você também pode adicionar lógica adicional aos getters e setters para realizar validações, cálculos complexos ou interações com outros atributos da classe.

### Exemplo com Lógica Adicional
```dart
class Retangulo {
  double _largura;
  double _altura;

  Retangulo(this._largura, this._altura);

  // Getter para calcular a área
  double get area => _largura * _altura;

  // Getter para obter a largura
  double get largura => _largura;

  // Setter para definir a largura
  set largura(double valor) {
    if (valor > 0) {
      _largura = valor;
    }
  }

  // Getter para obter a altura
  double get altura => _altura;

  // Setter para definir a altura
  set altura(double valor) {
    if (valor > 0) {
      _altura = valor;
    }
  }
}
```

Neste exemplo:
- `Retangulo` é uma classe que possui atributos privados `_largura` e `_altura`.
- `get area` é um getter que calcula e retorna a área do retângulo.
- `get largura` e `set largura` são getters e setters para obter e definir a largura do retângulo, com validação para garantir que o valor seja maior que zero.
- `get altura` e `set altura` são getters e setters semelhantes para a altura do retângulo.

## Conclusão
Os getters e setters em Dart são ferramentas poderosas para controlar o acesso aos atributos de uma classe, permitindo a implementação de lógica adicional e validações necessárias. Eles são essenciais para a prática de encapsulamento de dados, garantindo que os objetos sejam manipulados de maneira consistente e segura em um programa Dart.