import 'package:flutter/material.dart';
import 'package:projeto03/widget/localizacao.dart';

class HistoricoPartidas extends StatelessWidget {
  final List<Map<String, dynamic>> partidas = [
    {'data': '01/04/2022', 'horario': '19h', 'local': 'Estádio Municipal'},
    {'data': '15/04/2022', 'horario': '14h', 'local': 'Campo da Praça'},
    {'data': '29/04/2022', 'horario': '16h', 'local': 'Quadra do Clube'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Histórico de Partidas'),
      ),
      body: ListView.builder(
        itemCount: partidas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(partidas[index]['data']),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(partidas[index]['horario']),
                Text(partidas[index]['local']),
              ],
            ),
          );
        },
      ),
    );
  }
}
