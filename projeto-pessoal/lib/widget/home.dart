import 'package:flutter/material.dart';
import 'package:projeto03/widget/perfil.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: const Text("Home")),
      body: ElevatedButton(
        child: const Text("Ir para Perfil"),
        onPressed: () {
          Route rota = MaterialPageRoute(builder: (context) => Perfil());
          /* Navigator.pushReplacement(context, rota); */

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Perfil()),
          );
        },
      ),
    );
  }
}
