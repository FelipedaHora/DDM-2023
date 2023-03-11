class Professor {
  
  int? SIAPE;
  String? nome;
  String? CPF;
  DateTime? nascimento; //atributo privado
  DateTime? dataEntrada;
  String? email;
  Function funcaoPrintaNome;

  Professor({ //CONSTRUTOR NOMEADO
    required this.SIAPE,
    required this.nome,
    required this.CPF, 
    required this.nascimento, 
    required this.dataEntrada, 
    this.email,
    required this.funcaoPrintaNome});


}
