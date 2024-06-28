# DECLARANDO E MODIFICANDO VARIÁVEIS
Em Dart, você pode declarar variáveis utilizando palavras-chave específicas para definir o tipo da variável ou deixando que o Dart infera o tipo automaticamente. Aqui estão os principais métodos para declarar e modificar variáveis em Dart:

## Declarando Variáveis:
1. **Com Tipo Específico:**
   Para declarar uma variável com um tipo específico, utiliza-se a sintaxe `Tipo nomeVariavel = valorInicial;`.

   Exemplo:
   ```dart
   // Declarando uma variável inteira
   int idade = 30;

   // Declarando uma variável double
   double altura = 1.75;

   // Declarando uma variável booleana
   bool temPermissao = true;

   // Declarando uma variável string
   String nome = 'João';

   // Declarando uma lista de inteiros
   List<int> numeros = [1, 2, 3, 4, 5];

   // Declarando uma variável dinâmica (tipo é inferido)
   var salario = 2500.50;
   ```

2. **Com Tipo Dinâmico:**
   Em Dart, você também pode usar a palavra-chave `var` para declarar uma variável com tipo dinâmico, onde o tipo é inferido automaticamente pelo Dart durante a execução do programa.

   Exemplo:
   ```dart
   var idade = 30;          // tipo int
   var altura = 1.75;       // tipo double
   var temPermissao = true; // tipo bool
   var nome = 'João';       // tipo String
   ```

## Modificando Variáveis:
Em Dart, variáveis declaradas como `var` podem ter seu tipo inferido apenas uma vez. Depois disso, elas são do tipo que foi inferido inicialmente. Veja um exemplo:

```dart
var numero = 10;  // tipo int, inferido automaticamente
numero = 20;      // Permitido, porque número é int

// número = 'dez';  // Erro! Não é permitido mudar o tipo da variável após a inferência inicial
```

## Conclusão:
- **Declarar com Tipo Específico:** Use `Tipo nome = valor;` para declarar variáveis com um tipo específico.
- **Declarar com Tipo Dinâmico:** Use `var nome = valor;` para deixar que Dart infira automaticamente o tipo da variável.
- **Modificação de Variáveis:** Variáveis em Dart podem ser modificadas após sua inicialização, desde que respeitem o tipo inferido inicialmente (caso de `var`) ou o tipo declarado explicitamente.

Essas são as maneiras básicas de declarar e modificar variáveis em Dart, proporcionando flexibilidade na tipagem e permitindo uma fácil adaptação conforme as necessidades do seu código.