import 'package:flutter/material.dart';
import 'package:projeto03/widget/chat.dart';

class Agenda extends StatelessWidget {
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
}
