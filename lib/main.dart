import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Formulario',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.indigo,
        ),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Produtos'),
          ),
          body: Column(
            children: <Widget>[
              const TextField(
                  style:
                      TextStyle(fontStyle: FontStyle.normal, fontSize: 24.0)),
              ElevatedButton.icon(
                //ElevatedButton com um icone
                onPressed: (null),
                icon: const Icon(
                  //coloca o icone
                  Icons.add,
                  color: Colors.black,
                  size: 32.0,
                ),
                label: const Text('Cadastrar'),
                //texto do botão
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      //isso define o estilo do corpo do botão
                        borderRadius: BorderRadius.circular(20.0))),
              )
            ],
          ),
        ));
  }
}

class Produtos {
  final String nome;
  final double valor;
  final int quantidade;

  Produtos(this.nome, this.valor, this.quantidade);
}
