

import 'package:flutter/material.dart';

class Formulario extends StatelessWidget{
  var keyForm = GlobalKey<FormState>();

  var controllerNome = TextEditingController();
  var controllerSobrenome = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro')),
      body: Form(
        key: keyForm,
        child: Column(
          children: [
            TextFormField(
              controller: controllerNome,
              decoration: InputDecoration(
                label: Text('Nome:'),
                hintText: 'Informe seu nome.'
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'O campo é obrigatório';
                  }
                  return null;
                },
                
            ),
            TextFormField(
              controller: controllerSobrenome,
              decoration: InputDecoration(
                  label: Text('Sobrenome:'), hintText: 'Informe seu Sobrenome.'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'O campo é obrigatório';
                }
                return null;
              },
            ),
            ElevatedButton( 
              child: Text('ok'),
              onPressed: (){
                if(keyForm.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${controllerNome.text} ${controllerSobrenome.text}'))
                  );
                }
              })
          ],
        ),
        ),
    );
  }
}