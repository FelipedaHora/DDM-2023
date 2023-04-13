import 'package:flutter/material.dart';
import 'package:projeto03/widget/agenda.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.redAccent, title: const Text("Perfil")),
      body: ElevatedButton(
        child: const Text("Ir para Agenda"),
        onPressed: () {
          Route rota = MaterialPageRoute(builder: (context) => Agenda());
          /* Navigator.pushReplacement(context, rota); */

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Agenda()),
          );
        },
      ),
    );
  }
}
