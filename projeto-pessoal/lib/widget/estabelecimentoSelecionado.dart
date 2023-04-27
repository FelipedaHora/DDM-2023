import 'package:flutter/material.dart';
import 'package:projeto03/widget/historicoPartidas.dart';

class EstabelecimentoSelecionado extends StatelessWidget {
  const EstabelecimentoSelecionado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: const Text("Estabelecimento Selecionado")),
      body: ElevatedButton(
        child: const Text("Ir para Histórico de Partidas"),
        onPressed: () {
/*           Route rota =
              MaterialPageRoute(builder: (context) => HistoricoPartidas());
          Navigator.pushReplacement(context, rota); */

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HistoricoPartidas()),
          );
        },
      ),
    );
  }
}
