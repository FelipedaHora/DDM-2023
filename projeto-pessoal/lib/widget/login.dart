import 'package:flutter/material.dart';
import 'package:projeto03/widget/home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red, title: const Text("Login")),
      body: ElevatedButton(
        child: const Text("Ir para Home"),
        onPressed: () {
          Route rota = MaterialPageRoute(builder: (context) => Home());
          Navigator.pushReplacement(context, rota);

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Home()),
          );
        },
      ),
    );
  }
}
