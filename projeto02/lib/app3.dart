import 'package:flutter/material.dart';
import 'package:projeto02/tela3.dart';

import 'home.dart';

class App3 extends StatelessWidget {
  //App possui um método abstrato
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aula Base",
      home: Tela3(),
    );
  }
}
