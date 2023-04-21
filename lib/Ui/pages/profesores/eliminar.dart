import 'package:flutter/material.dart';
import 'package:proyectoclase/domain/models/profesores.dart';

class EliminarProfes extends StatefulWidget {
  const EliminarProfes({super.key});

  @override
  State<EliminarProfes> createState() => _EliminarProfes();
}

class _EliminarProfes extends State<EliminarProfes> {
  final List<Profesor> _profes = listaprofes;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("eliminar profesores"),
        ),
        body: ListView.builder(
          itemCount: _profes.length,
          itemBuilder: (context, index) {
            final listaProfes = _profes[index];
            return Dismissible(
              key: Key(""),
              onDismissed: (direction) {
                setState(() {
                  _profes.removeAt(index);
                });

                // Then show a snackbar.
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('$_profes dismissed')));
              },
              // Show a red background as the item is swiped away.
              background: Container(color: Colors.red),
              child: ListTile(
                title: Text(""),
              ),
            );
          },
        ),
      ),
    );
  }
}
