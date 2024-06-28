# MANUAL
## 1. INSTALAÇÃO:
### NO WINDOWS:
1. **Baixe o SDK do Dart:**
   - Acesse [Dart SDK](https://dart.dev/get-dart) e baixe o instalador para Windows.

2. **Execute o Instalador:**
   - Siga as instruções do instalador para concluir a instalação.

3. **Verifique a Instalação:**
   - Abra o Prompt de Comando e digite `dart --version`. Você deve ver a versão instalada do Dart.

### NO MACOS:
1. **Usando Homebrew:**
   - Se você não tem Homebrew instalado, instale-o com o comando:
     ```sh
     /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
     ```

   - Instale o Dart com Homebrew:
     ```sh
     brew tap dart-lang/dart
     brew install dart
     ```

2. **Verifique a Instalação:**
   - Abra o Terminal e digite `dart --version`. Você deve ver a versão instalada do Dart.

### NO LINUX:
1. **Adicionar o Repositório do Dart:**
   - Adicione o repositório do Dart:
     ```sh
     sudo apt update
     sudo apt install apt-transport-https
     sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
     sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
     ```

2. **Instalar o Dart:**
   - Instale o Dart:
     ```sh
     sudo apt update
     sudo apt install dart
     ```

3. **Verifique a Instalação:**
   - Abra o Terminal e digite `dart --version`. Você deve ver a versão instalada do Dart.

## 2. CONFIGURAÇÃO DO AMBIENTE:
### CONFIGURANDO A VARIÁVEL PATH:
Para garantir que você possa executar comandos Dart de qualquer diretório, adicione o caminho do Dart SDK à variável de ambiente `PATH`.

### NO WINDOWS:
1. **Abra o Painel de Controle** e vá para **Sistema** > **Configurações Avançadas do Sistema** > **Variáveis de Ambiente**.
2. **Edite a variável PATH** e adicione o caminho para o diretório `bin` do Dart SDK (por exemplo, `C:\tools\dart-sdk\bin`).

### NO MACOS/LINUX:
1. **Abra o arquivo de perfil** (por exemplo, `~/.bashrc`, `~/.zshrc`, ou `~/.profile`) e adicione a seguinte linha:
   ```sh
   export PATH="$PATH:/usr/lib/dart/bin"
   ```

2. **Atualize o Terminal:**
   - Para aplicar a mudança, digite:
     ```sh
     source ~/.bashrc  # ou o arquivo de perfil que você editou
     ```

## 3. CRIANDO O PRIMEIRO PROJETO:
### USANDO A LINHA DE COMANDO:
1. **Crie um Novo Projeto:**
   - Abra o terminal e execute o comando:
     ```sh
     dart create my_first_dart_project
     ```

2. **Navegue até o Diretório do Projeto:**
   ```sh
   cd my_first_dart_project
   ```

3. **Execute o Programa:**
   - Dentro do diretório do projeto, execute:
     ```sh
     dart run
     ```

### ESTRUTURA DO PROJETO:
A estrutura básica do projeto criado será semelhante a esta:

```
my_first_dart_project/
├── .dart_tool/
├── bin/
│   └── my_first_dart_project.dart
├── lib/
├── test/
├── CHANGELOG.md
├── pubspec.yaml
└── README.md
```

### EDITANDO E EXECUTANDO O CÓDIGO:
1. **Abra o Arquivo Principal:**
   - Navegue até `bin/my_first_dart_project.dart` e abra-o com seu editor de texto favorito (por exemplo, Visual Studio Code).

2. **Edite o Código:**
   - O arquivo padrão terá algo como:
     ```dart
     void main() {
       print('Hello, Dart!');
     }
     ```

3. **Execute o Código:**
   - No terminal, dentro do diretório do projeto, execute:
     ```sh
     dart run bin/my_first_dart_project.dart
     ```

Agora você está pronto para começar a desenvolver em Dart! 