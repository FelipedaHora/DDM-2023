import 'package:aula02/Aula%2002/Client.dart';
import 'package:aula02/Aula%2002/Task.dart';
import 'dart:io';


String verificaAprovacao() {
  double nota1, nota2, media;
  String resultado;

  print("informe a primeira nota: ");
  nota1 = double.parse(stdin.readLineSync()!);

  print("informe a nota2");
  nota2 = double.parse(stdin.readLineSync()!);

  media = (nota1 + nota2) / 2;
  return media >= 6 ? "Aprovado" : "Reprovado";
}

void verificaAprovacao2() {
  double nota1, nota2, media;
  String resultado;

  print("informe a primeira nota: ");
  nota1 = double.parse(stdin.readLineSync()!);

  print("informe a nota2");
  nota2 = double.parse(stdin.readLineSync()!);

  media = (nota1 + nota2) / 2;
  print((media >= 6) ? "Aprovado" : "Reprovado") ;
}



void main(List<String> arguments) {

    /* Client cliente = Client(
        "Clayton", DateTime.now(), "000.000.000-00", "(44) 997442630", "1");
    Task tarefa = Task(
        "logo",
        "desenho vetorizado para barbearia utilizando as cores cinza, preto e branco",
        cliente,
        DateTime.now(),
        "alta",
        "pendente",
        "1");

    print(
        '''
    Id: ${tarefa.id}
    Nome: ${tarefa.nome}
    Descrição: ${tarefa.descricao}
    Cliente: ${tarefa.cliente.nome}
    Data: ${tarefa.data}
    Prioridade: ${tarefa.prioridade}
    Status: ${tarefa.status}
    '''); */

    

/*     String nomedavariavel = verificaAprovacao();
    print(nomedavariavel); */

    verificaAprovacao2();
    
  
}
