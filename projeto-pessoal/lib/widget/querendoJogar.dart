import 'package:flutter/material.dart';

class QuerendoJogar extends StatelessWidget {
  const QuerendoJogar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black, title: const Text("Querendo Jogar")),
      body: ElevatedButton(
        child: const Text("Ir para Cadastro"),
        onPressed: () {
/*           Route rota = MaterialPageRoute(builder: (context) => Cadastro());
          Navigator.pushReplacement(context, rota); */
        },
      ),
    );
  }
}
