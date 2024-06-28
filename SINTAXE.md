# SINTAXE DA LINGUAGEM:
## 0) FUNDAMENTOS:
### OPERADORES ARITMÉTICOS:
Os operadores aritméticos em Dart são usados para realizar operações matemáticas básicas. Aqui estão alguns exemplos:

```dart
void main() {
  int a = 10;
  int b = 5;

  // Adição
  int soma = a + b;
  print('Soma: $soma'); // Output: Soma: 15

  // Subtração
  int subtracao = a - b;
  print('Subtração: $subtracao'); // Output: Subtração: 5

  // Multiplicação
  int multiplicacao = a * b;
  print('Multiplicação: $multiplicacao'); // Output: Multiplicação: 50

  // Divisão
  double divisao = a / b;
  print('Divisão: $divisao'); // Output: Divisão: 2.0

  // Divisão inteira
  int divisaoInteira = a ~/ b;
  print('Divisão Inteira: $divisaoInteira'); // Output: Divisão Inteira: 2

  // Módulo
  int modulo = a % b;
  print('Módulo: $modulo'); // Output: Módulo: 0
}
```

### OPERADORES RELACIONAIS:
Os operadores relacionais são usados para comparar dois valores. Eles retornam um valor booleano (`true` ou `false`). Aqui estão alguns exemplos:

```dart
void main() {
  int x = 10;
  int y = 20;

  // Igual a
  bool igual = (x == y);
  print('Igual: $igual'); // Output: Igual: false

  // Diferente de
  bool diferente = (x != y);
  print('Diferente: $diferente'); // Output: Diferente: true

  // Maior que
  bool maior = (x > y);
  print('Maior: $maior'); // Output: Maior: false

  // Menor que
  bool menor = (x < y);
  print('Menor: $menor'); // Output: Menor: true

  // Maior ou igual a
  bool maiorOuIgual = (x >= y);
  print('Maior ou Igual: $maiorOuIgual'); // Output: Maior ou Igual: false

  // Menor ou igual a
  bool menorOuIgual = (x <= y);
  print('Menor ou Igual: $menorOuIgual'); // Output: Menor ou Igual: true
}
```

### OPERADORES LÓGICOS:
Os operadores lógicos são usados para realizar operações lógicas sobre valores booleanos. Aqui estão alguns exemplos:

```dart
void main() {
  bool a = true;
  bool b = false;

  // E lógico (AND)
  bool eLogico = a && b;
  print('E Lógico (AND): $eLogico'); // Output: E Lógico (AND): false

  // OU lógico (OR)
  bool ouLogico = a || b;
  print('OU Lógico (OR): $ouLogico'); // Output: OU Lógico (OR): true

  // NÃO lógico (NOT)
  bool naoLogico = !a;
  print('NÃO Lógico (NOT): $naoLogico'); // Output: NÃO Lógico (NOT): false

  // Operador XOR lógico (Exclusive OR)
  bool xorLogico = (a || b) && !(a && b);
  print('XOR Lógico (Exclusive OR): $xorLogico'); // Output: XOR Lógico (Exclusive OR): true
}
```

Esses exemplos cobrem os operadores aritméticos, relacionais e lógicos básicos em Dart. Eles são fundamentais para a manipulação de dados e controle de fluxo em programas.

## 1) VARIAVEIS SIMPLES E INPUTS:
### VARIÁVEIS SIMPLES:
Em Dart, você pode declarar variáveis de diferentes tipos, como `int`, `double`, `String`, `bool`, entre outros. Aqui estão alguns exemplos de variáveis simples:

```dart
void main() {
  // Variável inteira
  int idade = 25;
  print('Idade: $idade'); // Output: Idade: 25

  // Variável de ponto flutuante
  double altura = 1.75;
  print('Altura: $altura'); // Output: Altura: 1.75

  // Variável de string
  String nome = 'Alice';
  print('Nome: $nome'); // Output: Nome: Alice

  // Variável booleana
  bool estaChovendo = false;
  print('Está chovendo? $estaChovendo'); // Output: Está chovendo? false
}
```

### INPUTS DO USUÁRIO:
Para receber entradas do usuário, você pode usar a função `stdin.readLineSync()` da biblioteca `dart:io`. Aqui está um exemplo de como ler diferentes tipos de entradas:

```dart
import 'dart:io';

void main() {
  // Lendo uma string do usuário
  print('Digite seu nome:');
  String? nome = stdin.readLineSync();
  print('Olá, $nome!');

  // Lendo um inteiro do usuário
  print('Digite sua idade:');
  String? inputIdade = stdin.readLineSync();
  if (inputIdade != null) {
    int idade = int.parse(inputIdade);
    print('Sua idade é $idade anos.');
  }

  // Lendo um ponto flutuante do usuário
  print('Digite sua altura (em metros):');
  String? inputAltura = stdin.readLineSync();
  if (inputAltura != null) {
    double altura = double.parse(inputAltura);
    print('Sua altura é $altura metros.');
  }

  // Lendo um booleano do usuário
  print('Está chovendo? (true/false):');
  String? inputChovendo = stdin.readLineSync();
  if (inputChovendo != null) {
    bool estaChovendo = inputChovendo.toLowerCase() == 'true';
    print('Está chovendo? $estaChovendo');
  }
}
```

### EXPLICAÇÃO:
1. **Importação da Biblioteca `dart:io`:**
   - Necessária para usar a função `stdin.readLineSync()` para ler entradas do usuário.

2. **Lendo uma String:**
   - Usa `stdin.readLineSync()` para ler a entrada e armazena o valor na variável `nome`.

3. **Lendo um Inteiro:**
   - Lê a entrada como string, converte para inteiro usando `int.parse()` e armazena na variável `idade`.

4. **Lendo um Ponto Flutuante:**
   - Lê a entrada como string, converte para double usando `double.parse()` e armazena na variável `altura`.

5. **Lendo um Booleano:**
   - Lê a entrada como string, converte para booleano verificando se o valor é `true` (ignora maiúsculas/minúsculas) e armazena na variável `estaChovendo`.

Esses exemplos demonstram como declarar variáveis simples e receber entradas do usuário em Dart, cobrindo tipos básicos como `String`, `int`, `double` e `bool`.

## 2) ESTRUTURA CONDICIONAL:
### ESTRUTURA IF-ELSE:
A estrutura `if-else` é usada para executar um bloco de código se uma condição for verdadeira e outro bloco de código se a condição for falsa.

```dart
void main() {
  int idade = 20;

  if (idade >= 18) {
    print('Você é maior de idade.');
  } else {
    print('Você é menor de idade.');
  }
}
```

### ESTRUTURA IF-ELSE, ELSE IF:
A estrutura `if-else if-else` permite verificar múltiplas condições em sequência. O primeiro bloco `if` que tiver sua condição avaliada como verdadeira será executado.

```dart
void main() {
  int nota = 85;

  if (nota >= 90) {
    print('Nota A');
  } else if (nota >= 80) {
    print('Nota B');
  } else if (nota >= 70) {
    print('Nota C');
  } else if (nota >= 60) {
    print('Nota D');
  } else {
    print('Nota F');
  }
}
```

### ESTRUTURA SWITCH:
A estrutura `switch` é usada para selecionar um dos muitos blocos de código para ser executado. Ela é uma alternativa ao uso de múltiplos `if-else if-else` e é útil quando você precisa comparar a mesma variável com diferentes valores.

```dart
void main() {
  String cor = 'vermelho';

  switch (cor) {
    case 'vermelho':
      print('A cor é vermelha.');
      break;
    case 'azul':
      print('A cor é azul.');
      break;
    case 'verde':
      print('A cor é verde.');
      break;
    default:
      print('Cor desconhecida.');
  }
}
```

### EXPLICAÇÃO:
1. **IF-ELSE:**
   - Avalia uma condição e executa um bloco de código se a condição for verdadeira, caso contrário, executa outro bloco de código.

2. **IF-ELSE, ELSE IF:**
   - Avalia múltiplas condições em sequência. O primeiro bloco com condição verdadeira será executado. Se nenhuma condição for verdadeira, o bloco `else` será executado.

3. **SWITCH:**
   - Compara a variável `cor` com diferentes valores. Para cada valor correspondente, executa o bloco de código associado. A palavra-chave `break` é usada para sair da estrutura `switch` após executar o bloco de código correspondente. O bloco `default` é executado se nenhum dos casos for correspondido.

Essas estruturas condicionais são fundamentais para o controle de fluxo em programas Dart, permitindo que o programa tome decisões com base nas condições avaliadas.

## 3) ESTRUTURA DE REPETIÇÃO:
### ESTRUTURA FOR:
A estrutura `for` é usada para repetir um bloco de código um número específico de vezes. Ela é geralmente usada quando se sabe quantas vezes o loop deve ser executado.

```dart
void main() {
  // Exemplo de loop for
  for (int i = 0; i < 5; i++) {
    print('Contagem: $i');
  }
}
```

### ESTRUTURA WHILE:
A estrutura `while` é usada para repetir um bloco de código enquanto uma condição específica for verdadeira. O loop `while` verifica a condição antes de executar o bloco de código.

```dart
void main() {
  int contador = 0;

  // Exemplo de loop while
  while (contador < 5) {
    print('Contagem: $contador');
    contador++;
  }
}
```

### ESTRUTURA DO-WHILE:
A estrutura `do-while` é semelhante à estrutura `while`, mas garante que o bloco de código seja executado pelo menos uma vez antes de verificar a condição.

```dart
void main() {
  int contador = 0;

  // Exemplo de loop do-while
  do {
    print('Contagem: $contador');
    contador++;
  } while (contador < 5);
}
```

### EXPLICAÇÃO:
1. **FOR:**
   - **Inicialização:** `int i = 0` define a variável de contagem `i` e a inicializa com `0`.
   - **Condição:** `i < 5` define a condição para continuar o loop. O loop executa enquanto essa condição for verdadeira.
   - **Incremento:** `i++` incrementa a variável `i` em `1` a cada iteração do loop.

2. **WHILE:**
   - **Condição:** `contador < 5` define a condição para continuar o loop. O loop executa enquanto essa condição for verdadeira.
   - **Incremento:** `contador++` incrementa a variável `contador` em `1` a cada iteração do loop.

3. **DO-WHILE:**
   - **Bloco de Código:** O bloco de código dentro do `do` é executado primeiro.
   - **Condição:** `contador < 5` define a condição para continuar o loop. O loop executa enquanto essa condição for verdadeira, mas a condição é verificada apenas após a execução do bloco de código, garantindo que o bloco seja executado pelo menos uma vez.

Essas estruturas de repetição são fundamentais para automatizar tarefas repetitivas e controlar o fluxo de execução em programas Dart.

## 4) VARIAVEIS COMPOSTAS:
Em Dart, variáveis compostas são aquelas que podem armazenar múltiplos valores ou elementos. As principais variáveis compostas são `List`, `Set`, e `Map`.

### LIST (LISTA):
Uma `List` em Dart é uma coleção ordenada de itens. Itens em uma lista podem ser acessados pelo seu índice.

```dart
void main() {
  // Declaração de uma lista de inteiros
  List<int> numeros = [1, 2, 3, 4, 5];
  print('Lista de números: $numeros');

  // Acessando elementos por índice
  print('Primeiro número: ${numeros[0]}');
  print('Último número: ${numeros[numeros.length - 1]}');

  // Adicionando elementos à lista
  numeros.add(6);
  print('Lista após adicionar 6: $numeros');

  // Removendo elementos da lista
  numeros.removeAt(0); // Remove o primeiro elemento
  print('Lista após remover o primeiro elemento: $numeros');

  // Iterando sobre uma lista
  for (int numero in numeros) {
    print('Número: $numero');
  }
}
```

### SET (CONJUNTO):
Um `Set` é uma coleção de itens únicos, sem ordem específica.

```dart
void main() {
  // Declaração de um conjunto de strings
  Set<String> frutas = {'maçã', 'banana', 'laranja'};
  print('Conjunto de frutas: $frutas');

  // Adicionando elementos ao conjunto
  frutas.add('uva');
  print('Conjunto após adicionar uva: $frutas');

  // Tentando adicionar um elemento duplicado
  frutas.add('maçã');
  print('Conjunto após tentar adicionar maçã novamente: $frutas');

  // Removendo elementos do conjunto
  frutas.remove('banana');
  print('Conjunto após remover banana: $frutas');

  // Iterando sobre um conjunto
  for (String fruta in frutas) {
    print('Fruta: $fruta');
  }
}
```

### MAP (MAPA):
Um `Map` é uma coleção de pares chave-valor. Cada chave é única e mapeada a exatamente um valor.

```dart
void main() {
  // Declaração de um mapa
  Map<String, int> idade = {
    'Alice': 30,
    'Bob': 25,
    'Charlie': 28,
  };
  print('Mapa de idades: $idade');

  // Acessando valores por chave
  print('Idade da Alice: ${idade['Alice']}');

  // Adicionando novos pares chave-valor
  idade['Dave'] = 20;
  print('Mapa após adicionar Dave: $idade');

  // Removendo pares chave-valor
  idade.remove('Bob');
  print('Mapa após remover Bob: $idade');

  // Iterando sobre um mapa
  idade.forEach((chave, valor) {
    print('Nome: $chave, Idade: $valor');
  });
}
```

### EXPLICAÇÃO:
1. **List (Lista):**
   - Coleção ordenada de itens.
   - Acessível por índices.
   - Permite elementos duplicados.

2. **Set (Conjunto):**
   - Coleção de itens únicos.
   - Não mantém uma ordem específica.
   - Não permite elementos duplicados.

3. **Map (Mapa):**
   - Coleção de pares chave-valor.
   - Cada chave é única e mapeia para um valor específico.
   - Permite acesso rápido aos valores através das chaves.

Essas variáveis compostas são essenciais para manipular e organizar dados complexos em Dart, oferecendo flexibilidade e eficiência na gestão de coleções de dados.

## 5) FUNÇÕES:
Funções são blocos de código reutilizáveis que realizam uma tarefa específica. Em Dart, as funções podem ser definidas para receber parâmetros e retornar valores.

### FUNÇÃO SIMPLES:
Uma função simples sem parâmetros e sem retorno.

```dart
void saudacao() {
  print('Olá, bem-vindo(a) ao Dart!');
}

void main() {
  saudacao(); // Chamando a função saudacao
}
```

### FUNÇÃO COM PARÂMETROS:
Uma função que recebe parâmetros.

```dart
void saudacaoPersonalizada(String nome) {
  print('Olá, $nome, bem-vindo(a) ao Dart!');
}

void main() {
  saudacaoPersonalizada('Alice'); // Chamando a função com o parâmetro 'Alice'
}
```

### FUNÇÃO COM RETORNO:
Uma função que retorna um valor.

```dart
int soma(int a, int b) {
  return a + b;
}

void main() {
  int resultado = soma(5, 3); // Chamando a função e armazenando o resultado
  print('A soma é: $resultado');
}
```

### FUNÇÃO COM PARÂMETROS OPCIONAIS:
Funções em Dart podem ter parâmetros opcionais, que podem ser posicionais ou nomeados.

**Parâmetros Opcionais Posicionais:**

```dart
void mostrarInfo(String nome, [int idade = 0]) {
  print('Nome: $nome');
  if (idade > 0) {
    print('Idade: $idade');
  }
}

void main() {
  mostrarInfo('Alice');
  mostrarInfo('Bob', 25);
}
```

**Parâmetros Nomeados:**

```dart
void mostrarInfo({required String nome, int idade = 0}) {
  print('Nome: $nome');
  if (idade > 0) {
    print('Idade: $idade');
  }
}

void main() {
  mostrarInfo(nome: 'Alice');
  mostrarInfo(nome: 'Bob', idade: 25);
}
```

### FUNÇÃO ANÔNIMA:
Funções anônimas (ou lambda) podem ser atribuídas a variáveis ou passadas como parâmetros para outras funções.

```dart
void main() {
  var multiplicar = (int a, int b) => a * b;
  print('Multiplicação: ${multiplicar(3, 4)}');

  List<int> numeros = [1, 2, 3, 4];
  numeros.forEach((numero) {
    print(numero);
  });
}
```

### FUNÇÃO DE PRIMEIRA CLASSE:
Em Dart, funções são de primeira classe, o que significa que podem ser passadas como argumentos, retornadas de outras funções e atribuídas a variáveis.

```dart
void executarOperacao(int a, int b, int Function(int, int) operacao) {
  var resultado = operacao(a, b);
  print('O resultado da operação é: $resultado');
}

void main() {
  executarOperacao(5, 3, (a, b) => a + b); // Soma
  executarOperacao(5, 3, (a, b) => a * b); // Multiplicação
}
```

### EXPLICAÇÃO:
1. **Função Simples:**
   - Define e chama uma função que realiza uma tarefa específica.

2. **Função com Parâmetros:**
   - Define uma função que aceita parâmetros para personalizar seu comportamento.

3. **Função com Retorno:**
   - Define uma função que retorna um valor após a execução.

4. **Função com Parâmetros Opcionais:**
   - Permite definir parâmetros opcionais, que podem ser fornecidos ou omitidos ao chamar a função.

5. **Função Anônima:**
   - Função sem nome, útil para operações rápidas e simples, atribuível a variáveis ou passável como argumento.

6. **Função de Primeira Classe:**
   - Funções tratadas como objetos de primeira classe, permitindo maior flexibilidade e reutilização.

Funções são essenciais para organizar e modularizar o código, permitindo a reutilização e facilitando a manutenção e legibilidade em Dart.

## 6) CLASS POO:
A Programação Orientada a Objetos (POO) é um paradigma de programação que usa "objetos" – instâncias de classes – para representar dados e métodos. Os quatro pilares fundamentais da POO são: Encapsulamento, Herança, Polimorfismo e Abstração.

### 1. ENCAPSULAMENTO:
Encapsulamento é a prática de esconder os detalhes internos de um objeto e expor apenas o que é necessário. Em Dart, isso é feito usando modificadores de acesso (como `private`, que é indicado por `_` antes do nome).

**Exemplo:**

```dart
class ContaBancaria {
  String _titular;
  double _saldo;

  ContaBancaria(this._titular, this._saldo);

  // Método para obter o saldo
  double get saldo => _saldo;

  // Método para depositar dinheiro
  void depositar(double valor) {
    _saldo += valor;
  }

  // Método para sacar dinheiro
  void sacar(double valor) {
    if (valor <= _saldo) {
      _saldo -= valor;
    } else {
      print('Saldo insuficiente.');
    }
  }
}

void main() {
  var conta = ContaBancaria('Alice', 1000.0);
  conta.depositar(500.0);
  print('Saldo atual: ${conta.saldo}');
  conta.sacar(200.0);
  print('Saldo após saque: ${conta.saldo}');
}
```

### 2. HERANÇA:
Herança permite criar uma nova classe que reutiliza, estende e modifica o comportamento de uma classe existente. A classe existente é chamada de classe base ou superclasse, e a nova classe é chamada de subclasse ou classe derivada.

**Exemplo:**

```dart
class Animal {
  void comer() {
    print('O animal está comendo');
  }
}

class Cachorro extends Animal {
  void latir() {
    print('O cachorro está latindo');
  }
}

void main() {
  var cachorro = Cachorro();
  cachorro.comer();  // Método herdado
  cachorro.latir();  // Método da classe Cachorro
}
```

### 3. POLIMORFISMO:
Polimorfismo permite que uma classe seja tratada como se fosse uma classe base. Isso é útil para implementar métodos de forma diferente em classes derivadas, mas ainda assim manter uma interface comum.

**Exemplo:**

```dart
class Animal {
  void fazerSom() {
    print('O animal faz um som');
  }
}

class Gato extends Animal {
  @override
  void fazerSom() {
    print('O gato faz miau');
  }
}

class Cachorro extends Animal {
  @override
  void fazerSom() {
    print('O cachorro faz au au');
  }
}

void main() {
  Animal meuGato = Gato();
  Animal meuCachorro = Cachorro();

  meuGato.fazerSom();
  meuCachorro.fazerSom();
}
```

### 4. ABSTRAÇÃO:
Abstração é o processo de ocultar os detalhes complexos e mostrar apenas a funcionalidade essencial do objeto. Em Dart, isso é frequentemente feito através de classes abstratas ou interfaces.

**Exemplo:**

```dart
abstract class Forma {
  void desenhar();  // Método abstrato
}

class Circulo extends Forma {
  @override
  void desenhar() {
    print('Desenhando um círculo');
  }
}

class Quadrado extends Forma {
  @override
  void desenhar() {
    print('Desenhando um quadrado');
  }
}

void main() {
  Forma circulo = Circulo();
  Forma quadrado = Quadrado();

  circulo.desenhar();
  quadrado.desenhar();
}
```

### EXPLICAÇÃO:
1. **Encapsulamento:**
   - Protege os dados internos de uma classe e permite o controle sobre o acesso e modificação desses dados.
   - Implementado usando modificadores de acesso.

2. **Herança:**
   - Permite criar novas classes baseadas em classes existentes, promovendo reutilização de código.
   - Usa a palavra-chave `extends`.

3. **Polimorfismo:**
   - Permite que objetos de diferentes classes sejam tratados como objetos da classe base comum.
   - Facilita a implementação de métodos específicos para classes derivadas mantendo uma interface comum.

4. **Abstração:**
   - Simplifica a complexidade ao ocultar detalhes desnecessários e mostrando apenas a funcionalidade essencial.
   - Implementado através de classes abstratas ou interfaces.

Esses pilares são fundamentais para a construção de programas modulares, reutilizáveis e fáceis de manter usando o paradigma de Programação Orientada a Objetos em Dart.