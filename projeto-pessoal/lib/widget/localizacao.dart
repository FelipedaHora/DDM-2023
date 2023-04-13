import 'package:flutter/material.dart';
import 'package:projeto03/widget/perfil.dart';
import 'package:projeto03/widget/perfilEstabelecimento.dart';

class Localizacao extends StatelessWidget {
  const Localizacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Localização")),
      body: ElevatedButton(
        child: const Text("Ir para Perfil estabelecimento"),
        onPressed: () {
/*           Route rota =
              MaterialPageRoute(builder: (context) => PerfilEstabelecimento());
          Navigator.pushReplacement(context, rota); */

          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PerfilEstabelecimento()),
          );
        },
      ),
    );
  }
}
