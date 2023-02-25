import 'package:aula02/Aula%2002/Client.dart';
import 'package:aula02/Aula%2002/Task.dart';
import 'package:aula02/aula02.dart' as aula02;

void main(List<String> arguments) {

    Client cliente = Client(
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
    ''');
  
}
