import 'package:flutter/material.dart';
import 'package:projeto03/widget/chat.dart';
import 'package:table_calendar/table_calendar.dart';

/* class Agenda extends StatelessWidget {
  const Agenda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Agenda")),
      body: ElevatedButton(
        child: const Text("Ir para Chat"),
        onPressed: () {
          Route rota = MaterialPageRoute(builder: (context) => Chat());
          /* Navigator.pushReplacement(context, rota); */

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Chat()),
          );
        },
      ),
    );
  }
} */

class Agenda extends StatefulWidget {
  @override
  _AgendaState createState() => _AgendaState();
}

class _AgendaState extends State<Agenda> {
  /* CalendarController _calendarController = CalendarController(); */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda'),
      ),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2010, 10, 16),
            focusedDay: DateTime.now(),
            lastDay: DateTime.utc(2050, 3, 14),
            /* calendarController: _calendarController, */
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navega para a tela anterior
                },
                child: Text('Voltar'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Realiza o agendamento
                },
                child: Text('Agendar'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
