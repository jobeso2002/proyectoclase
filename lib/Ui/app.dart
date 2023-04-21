import 'package:flutter/material.dart';
import 'package:proyectoclase/Ui/pages/profesores/listas.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'gestion de profesores',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const ListaProfes(),
    );
  }
}
