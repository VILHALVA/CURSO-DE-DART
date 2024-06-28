void main() {
	// Comparadores
	// --------------------
	// > Maior
	// >= Maior ou igual
	// < Menor
	// <= Menor ou igual
	// == Igual
	// != Diferente
	
  double num1 = 15.0;
	bool testeComp = (15 != num1);
	print("COMP: $testeComp");

  // Operador OR
	// --------------------
	// true  true -> true
	// true  false -> true
	// false  true -> true
	// flase  false -> false

  bool testeOr = (false || true);
  print("OR: $testeOr");

  // Operador AND
	// --------------------
	// true  true -> true
	// true  false -> false
	// false  true -> false
	// flase  false -> false

  bool testeAnd = (true && false);
  print("OR: $testeAnd");

  bool complexa = (10 > 20) && ((30 < 20) || testeAnd);
  print(complexa);

  print(!false);
  print(!true);
}