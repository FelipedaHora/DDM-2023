import 'package:flutter/material.dart';
import 'package:projeto03/widget/estabelecimentoSelecionado.dart';

class Estabelecimento extends StatelessWidget {
  const Estabelecimento({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Text("Estabelecimento")),
      body: ElevatedButton(
        child: const Text("Ir para Estabelecimento Selecionado"),
        onPressed: () {
/*           Route rota = MaterialPageRoute(
              builder: (context) => EstabelecimentoSelecionado());
          Navigator.pushReplacement(context, rota); */

          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const EstabelecimentoSelecionado()),
          );
        },
      ),
    );
  }
}
