import '../lib/Aula 04/Classes/aluno.dart';
import '../lib/Aula 04/Classes/professor.dart';
import '../lib/Aula 04/Classes/alunoComFuncao.dart';

void minhaFuncao() {
  print("buscar livro");
}

String? printaNome(Professor professor){
  String? nome = professor.nome;
  return nome;
}

void main(List<String> arguments) {
  var aluno = Aluno.construtorNomimal(
      RA: 123456789,
      nome: "Felipe Adrian da Hora de Arruda",
      CPF: "000.000.000-00",
      nascimento: DateTime.now());

  var aluno2 = Aluno.construtorPadrao(12345678910,
      "Felipe Adrian da Hora de Arruda 2", "000.000.000-10", DateTime.now());

  var alunoComFuncao = AlunoComFuncao(
      RA: 123456789,
      nome: "Felipe Adrian da Hora de Arruda",
      CPF: "000.000.000-00",
      nascimento: DateTime.now(),
      minhaFuncao: minhaFuncao);

  var alunoComFuncao2 = AlunoComFuncao(
      RA: 123456789,
      nome: "Felipe Adrian da Hora de Arruda",
      CPF: "000.000.000-00",
      nascimento: DateTime.now(),
      minhaFuncao: () {
        print("object");
      });

  var alunoComFuncao3 = AlunoComFuncao(
      RA: 123456789,
      nome: "Felipe Adrian da Hora de Arruda",
      CPF: "000.000.000-00",
      nascimento: DateTime.now(),
      minhaFuncao: () => print("object")
      );

  /* print("${aluno.nome} \n ${aluno.CPF} \n ${aluno.RA} \n ${aluno.nascimento}");
  print("\n");

  print(
      "${aluno2.nome} \n ${aluno2.CPF} \n ${aluno2.RA} \n ${aluno2.nascimento}");
  print("\n");

  print(
      "${alunoComFuncao.nome} \n ${alunoComFuncao.CPF} \n ${alunoComFuncao.RA} \n ${alunoComFuncao.nascimento} \n ");
  print("\n");

  print(
      "${alunoComFuncao2.nome} \n ${alunoComFuncao2.CPF} \n ${alunoComFuncao2.RA} \n ${alunoComFuncao2.nascimento} \n");
  print("\n"); */

  print("${Aluno.construtorNomimal(RA: 123456789, nome: "Felipe Adrian da Hora de Arruda", CPF: "000.000.000-00", nascimento: DateTime.now())}");

  var professor = Professor(SIAPE: 123456, nome: "teacher", CPF: "222.222.222-22", nascimento: DateTime.now(), dataEntrada: DateTime.now(), funcaoPrintaNome: printaNome)


/*   var professor = Professor();

  print(
      "${professor.nome} \n ${professor.CPF} \n ${professor.SIAPE} \n ${professor.dataEntrada} \n ${professor.email}") */;
}
