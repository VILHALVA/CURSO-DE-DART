void main() {
  // chave   valor
  // nome    daniel
  // cidade  são paulo

  Map<int, String> ddds = Map();
  ddds[11] = "São Paulo";
  ddds[19] = "Campinas";
  ddds[13] = "Não sei!";

  print(ddds);
  print(ddds.keys);
  print(ddds.values);

  ddds.remove(11);

  Map<String, dynamic> pessoa = Map();
  pessoa["nome"] = "Enzo";
  pessoa["idade"] = 10;
  pessoa ["altura"] = 1.50;

  Map<String, InfosPessoa> pessoas = Map();
  pessoas["João"] = InfosPessoa(30);
  pessoas["Marcelo"] = InfosPessoa(20);

}

class InfosPessoa {
  int? idade;
  InfosPessoa(this.idade);
}