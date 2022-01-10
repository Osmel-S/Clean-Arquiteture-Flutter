import 'package:flutter/material.dart';
import 'package:teste_project/core/inject/inject.dart';
import 'package:teste_project/layers/apresentation/UI/carro_page.dart';

void main() {
  Inject.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CarroPage(),
    );
  }
}
