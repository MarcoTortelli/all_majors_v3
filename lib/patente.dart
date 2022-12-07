class Patente {
  int id;
  String nome;
  String patente;
  int idade;
  String sexo;
  Patente(
      {required this.id,
      required this.nome,
      required this.patente,
      required this.idade,
      required this.sexo});
  factory Patente.fromJson(Map<String, dynamic> jsonData) {
    return Patente(
        id: int.parse(jsonData['id']),
        nome: jsonData['nome'],
        patente: jsonData['patente'],
        idade: int.parse(jsonData['idade']),
        sexo: jsonData['sexo']);
  }
}
