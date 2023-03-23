import 'package:flutter/material.dart';

import 'home.dart';

class App extends StatelessWidget{
  //App possui um método abstrato
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Aula Base",
      home: Home(),
    );
  }

}