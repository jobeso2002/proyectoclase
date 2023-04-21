import 'package:flutter/material.dart';
import 'package:proyectoclase/Ui/pages/profesores/actualizar.dart';
import 'package:proyectoclase/Ui/pages/profesores/add.dart';
import 'package:proyectoclase/Ui/pages/profesores/eliminar.dart';
import 'package:proyectoclase/domain/models/profesores.dart';

class ListaProfes extends StatefulWidget {
  const ListaProfes({super.key});

  @override
  State<ListaProfes> createState() => _ListaProfesState();
}

class _ListaProfesState extends State<ListaProfes> {
  final List<Profesor> _profes = listaprofes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("listado de profesores"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CrearProfes()))
                    .then((respuesta) {
                  _profes.add(respuesta);
                  setState(() {});
                });
              },
              icon: const Icon(Icons.add_circle)),
        ],
      ),
      body: ListView.builder(
          itemCount: _profes.length,
          itemBuilder: (context, index) {
            return ListTile(
              onLongPress: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const EliminarProfes()))
                    .then((respuesta) {
                  setState(() {
                    _profes.removeAt(index);
                  });
                });
              },
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const ActualizarProfes()))
                    .then((respuesta) {
                  _profes[index] = respuesta;
                  setState(() {});
                });
              },
              title: Text(_profes[index].nombre),
              subtitle: Text(_profes[index].programa),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(_profes[index].foto)),
              trailing: CircleAvatar(
                backgroundColor:
                    (_profes[index].estado) ? Colors.green : Colors.grey,
                radius: 15.0,
                child: (_profes[index].estado)
                    ? Text("${_profes[index].horas}")
                    : const Text("0"),
              ),
            );
          }),
    );
  }
}
