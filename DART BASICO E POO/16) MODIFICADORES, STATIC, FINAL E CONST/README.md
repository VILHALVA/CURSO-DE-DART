# MODIFICADORES, STATIC, FINAL E CONST
Em Dart, assim como em outras linguagens de programação, existem modificadores que podem ser aplicados a variáveis e métodos para controlar seu comportamento e uso. Vamos explorar os modificadores `static`, `final` e `const` em Dart.

## Modificador `static`
O modificador `static` é usado para declarar variáveis e métodos que pertencem à própria classe em vez de instâncias individuais dessa classe. Isso significa que uma variável estática ou um método estático pode ser acessado diretamente pela classe, sem precisar criar uma instância dessa classe.

### Variáveis Estáticas
```dart
class Exemplo {
  static int contador = 0;
}
```

Neste exemplo, `contador` é uma variável estática da classe `Exemplo`. Pode ser acessada usando `Exemplo.contador`.

### Métodos Estáticos
```dart
class Matematica {
  static int soma(int a, int b) {
    return a + b;
  }
}
```

No exemplo acima, `soma` é um método estático da classe `Matematica`. Pode ser acessado diretamente usando `Matematica.soma(2, 3)`.

**Características do `static`:**
- Não pode acessar membros não estáticos diretamente.
- Compartilhado entre todas as instâncias da classe.
- Pode ser acessado sem criar uma instância da classe.

## Modificador `final`
O modificador `final` em Dart indica que a variável ou atributo deve ser atribuído exatamente uma vez. Uma vez atribuído, seu valor não pode ser alterado.

### Variáveis `final`
```dart
class Exemplo {
  final int valorFinal = 10;
}
```

Neste exemplo, `valorFinal` é uma variável final. Ela deve ser inicializada exatamente uma vez.

### Atributos `final` em Classes
```dart
class Pessoa {
  final String nome;
  
  Pessoa(this.nome);
}
```

Neste exemplo, `nome` é um atributo `final` da classe `Pessoa`. Ele deve ser inicializado na declaração ou no construtor da classe e não pode ser alterado depois disso.

**Características do `final`:**
- Deve ser inicializado exatamente uma vez.
- Pode ser inicializado na declaração ou no construtor.
- O valor não pode ser alterado após a inicialização.

## Modificador `const`
O modificador `const` em Dart cria uma constante em tempo de compilação. Isso significa que o valor da variável ou objeto `const` é determinado em tempo de compilação e não pode ser alterado posteriormente.

### Variáveis `const`
```dart
void main() {
  const int numero = 5;
}
```

Neste exemplo, `numero` é uma variável constante. Ela deve ser atribuída a um valor constante em tempo de compilação.

### Objetos `const`
```dart
void main() {
  const listaConstante = const [1, 2, 3];
}
```

Neste exemplo, `listaConstante` é uma lista constante. A lista inteira e seus elementos devem ser constantes em tempo de compilação.

**Características do `const`:**
- Deve ser inicializado com um valor constante em tempo de compilação.
- Cria um objeto imutável.
- Pode ser usado para variáveis, listas, mapas e objetos.

## Diferenças entre `final` e `const`
- **`final`:** Pode ser inicializado apenas uma vez e o valor pode ser definido em tempo de execução. É útil quando o valor precisa ser definido em tempo de execução ou quando seu valor pode mudar dependendo de circunstâncias.
  
- **`const`:** Deve ser inicializado com um valor constante em tempo de compilação. O valor é determinado antes da execução do programa. É útil para criar constantes que não mudam durante a execução do programa e para garantir a imutabilidade de objetos.

## Utilizando Modificadores em Conjunto
Você pode combinar `final` e `const` com `static` para criar variáveis ou objetos constantes e estáticos.

```dart
class Exemplo {
  static const int valorConstante = 100;
}
```

Neste exemplo, `valorConstante` é uma variável estática e constante da classe `Exemplo`.

## Considerações Finais
- Escolha o modificador adequado com base nos requisitos de uso e no comportamento desejado para variáveis e métodos.
- Os modificadores `static`, `final` e `const` ajudam a controlar a visibilidade, imutabilidade e comportamento compartilhado de variáveis e métodos em Dart.
- Entenda as diferenças entre `final` e `const` para escolher o mais apropriado para sua necessidade de programação.