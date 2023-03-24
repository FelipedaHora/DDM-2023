import 'package:flutter/material.dart';

class Tela3 extends StatelessWidget {
  const Tela3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Segunda Tela"),
          backgroundColor: Colors.blue,
          shadowColor: Colors.grey,
          centerTitle: true,
        ),
        body: Center(
          child: const Text("Olá Mundo"),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
          backgroundColor: Colors.blue,
        ));
  }
}
