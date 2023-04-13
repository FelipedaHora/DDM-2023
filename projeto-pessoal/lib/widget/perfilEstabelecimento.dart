import 'package:flutter/material.dart';
import 'package:projeto03/widget/querendoJogar.dart';

class PerfilEstabelecimento extends StatelessWidget {
  const PerfilEstabelecimento({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Perfil Estabelecimento")),
      body: ElevatedButton(
        child: const Text("Ir para Querendo Jogar"),
        onPressed: () {
/*           Route rota = MaterialPageRoute(builder: (context) => QuerendoJogar());
          Navigator.pushReplacement(context, rota); */

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const QuerendoJogar()),
          );
        },
      ),
    );
  }
}
