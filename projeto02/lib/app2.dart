import 'package:flutter/material.dart';
import 'package:projeto02/tela2.dart';

import 'home.dart';

class App2 extends StatelessWidget {
  //App possui um método abstrato
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aula Base",
      home: Tela2(),
    );
  }
}
