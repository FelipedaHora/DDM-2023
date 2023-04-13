import 'package:flutter/material.dart';
import 'package:projeto03/widget/estabelecimentos.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.brown, title: const Text("Chat")),
      body: ElevatedButton(
        child: const Text("Ir para Estabelecimentos"),
        onPressed: () {
/*           Route rota =
              MaterialPageRoute(builder: (context) => Estabelecimento());
          Navigator.pushReplacement(context, rota); */

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Estabelecimento()),
          );
        },
      ),
    );
  }
}
