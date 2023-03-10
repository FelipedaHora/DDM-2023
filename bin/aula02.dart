import '../lib/Aula 04/Classes/aluno.dart';
import '../lib/Aula 04/Classes/professor.dart';

void main(List<String> arguments) {
  var aluno = Aluno.construtorNomimal(RA: 123456789, nome: "Felipe Adrian da Hora de Arruda", CPF: "000.000.000-00", nascimento:DateTime.now());
  
  var aluno2 = Aluno.construtorPadrao(
      12345678910,
      "Felipe Adrian da Hora de Arruda 2",
      "000.000.000-10",
      DateTime.now());

  print("${aluno.nome} \n ${aluno.CPF} \n ${aluno.RA} \n ${aluno.nascimento}");
  print("\n");

  print("${aluno2.nome} \n ${aluno2.CPF} \n ${aluno2.RA} \n ${aluno2.nascimento}");
  print("\n");

  var professor = Professor(987654321, "Helio Kamakawa", "111.111.111-11", DateTime.now(), DateTime.now(), "heliokamakawa@ifpr.com.br");

  print("${professor.nome} \n ${professor.CPF} \n ${professor.SIAPE} \n ${professor.dataEntrada} \n ${professor.email}");
}
