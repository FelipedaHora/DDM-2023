import 'package:flutter/material.dart';
import 'package:projeto03/widget/localizacao.dart';

class HistoricoPartidas extends StatelessWidget {
  const HistoricoPartidas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Histórico de Partidas")),
      body: ElevatedButton(
        child: const Text("Ir para Localização"),
        onPressed: () {
/*           Route rota = MaterialPageRoute(builder: (context) => Localizacao());
          Navigator.pushReplacement(context, rota); */

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Localizacao()),
          );
        },
      ),
    );
  }
}
