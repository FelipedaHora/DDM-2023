import 'package:aula02/Aula%2002/Client.dart';

class Task {
  String nome;
  String descricao;
  Client cliente;
  DateTime data;
  String prioridade;
  String status;
  String id;
  Task(this.nome, this.descricao, this.cliente, this.data, this.prioridade,
      this.status, this.id);
}
