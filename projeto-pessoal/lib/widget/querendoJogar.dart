import 'package:flutter/material.dart';

import 'chat.dart';

class QuerendoJogarScreen extends StatelessWidget {
  final List<Map<String, dynamic>> jogadores = [
    {
      'nome': 'João',
      'disponibilidade': ['Segunda-feira - 14h', 'Quinta-feira - 18h']
    },
    {
      'nome': 'Maria',
      'disponibilidade': ['Terça-feira - 10h', 'Sexta-feira - 16h']
    },
    {
      'nome': 'Pedro',
      'disponibilidade': ['Quarta-feira - 12h', 'Sábado - 15h']
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Querendo Jogar'),
        actions: [
          IconButton(
            icon: Icon(Icons.chat),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Chat(),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: jogadores.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(jogadores[index]['nome']),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: jogadores[index]['disponibilidade']
                  .map<Widget>((horario) => Text(horario))
                  .toList(),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Chat(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
