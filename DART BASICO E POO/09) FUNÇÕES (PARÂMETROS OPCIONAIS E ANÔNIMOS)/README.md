# FUNÇÕES (PARÂMETROS OPCIONAIS E ANÔNIMOS)
Em Dart, além dos parâmetros posicionais e nomeados, você pode usar parâmetros opcionais e funções anônimas (ou lambdas) para aumentar a flexibilidade e expressividade do seu código. Vamos explorar como utilizar parâmetros opcionais e funções anônimas em Dart.

## Parâmetros Opcionais
Os parâmetros opcionais em Dart permitem que você especifique parâmetros que podem ser omitidos ao chamar a função, oferecendo flexibilidade na forma como você interage com ela.

### Parâmetros Opcionais Posicionais
```dart
void exibirNome(String nome, [String sobrenome]) {
  if (sobrenome != null) {
    print('Nome completo: $nome $sobrenome');
  } else {
    print('Nome: $nome');
  }
}

void main() {
  exibirNome('João'); // Saída: Nome: João
  exibirNome('Ana', 'Silva'); // Saída: Nome completo: Ana Silva
}
```

Neste exemplo:
- `[String sobrenome]` define um parâmetro opcional posicional. Ele pode ser omitido ao chamar a função `exibirNome()`.
- Dentro da função, é verificado se `sobrenome` é `null` para determinar se foi fornecido ou não.

### Parâmetros Opcionais Nomeados
```dart
void exibirDados({String nome, int idade, String cidade = 'São Paulo'}) {
  print('Nome: $nome, Idade: $idade, Cidade: $cidade');
}

void main() {
  exibirDados(nome: 'Carlos', idade: 25); // Saída: Nome: Carlos, Idade: 25, Cidade: São Paulo
  exibirDados(nome: 'Maria', idade: 30, cidade: 'Rio de Janeiro'); // Saída: Nome: Maria, Idade: 30, Cidade: Rio de Janeiro
}
```

Neste exemplo:
- `{String nome, int idade, String cidade = 'São Paulo'}` define parâmetros nomeados onde `nome` e `idade` são obrigatórios, e `cidade` é opcional com um valor padrão definido como 'São Paulo'.
- Ao chamar `exibirDados()`, você pode especificar apenas os parâmetros que deseja, e `cidade` assume o valor padrão se não for fornecido.

## Funções Anônimas (Lambdas)
Funções anônimas, também conhecidas como lambdas, permitem definir blocos de código que podem ser passados como argumentos para outras funções ou armazenados em variáveis para uso posterior.

### Exemplo de Função Anônima
```dart
void main() {
  // Exemplo de função anônima para calcular o dobro de um número
  var calcularDobro = (int numero) {
    return numero * 2;
  };

  print('O dobro de 5 é: ${calcularDobro(5)}'); // Saída: O dobro de 5 é: 10
}
```

Neste exemplo:
- `var calcularDobro = (int numero) { return numero * 2; };` define uma função anônima que calcula o dobro de um número.
- `calcularDobro(5)` chama essa função anônima e retorna o dobro de 5.

## Considerações Adicionais
- **Uso de Parâmetros Opcionais:** Parâmetros opcionais são úteis quando você tem funções com muitas configurações possíveis ou quando alguns parâmetros podem não ser necessários em todos os cenários.
  
- **Flexibilidade de Funções Anônimas:** Funções anônimas são especialmente úteis ao lidar com callbacks ou ao passar funcionalidades específicas para outras partes do código sem a necessidade de definir uma função separada.

- **Combinando Parâmetros:** Você pode combinar parâmetros posicionais, nomeados e opcionais em uma mesma função para aumentar a flexibilidade e expressividade do seu código.

Esses conceitos são fundamentais para aproveitar ao máximo as capacidades de Dart em termos de flexibilidade e modularidade na definição e utilização de funções.