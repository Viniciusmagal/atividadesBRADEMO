void main() {
  var equipamento = "Impressora 3D";
  String local = "Lab de Protótipos";
  dynamic patrimonio = 12345;

  patrimonio = "12345-A";

  print(equipamento);
  print(local);
  print(patrimonio);

  print(equipamento is String);
  print(local is String);
  print(patrimonio is String);

  // dynamic permite mudar o tipo em tempo de execução.
  // String mantém sempre o mesmo tipo.
}