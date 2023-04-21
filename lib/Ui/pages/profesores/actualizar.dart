import 'package:flutter/material.dart';
import 'package:proyectoclase/domain/models/profesores.dart';
import 'package:proyectoclase/Ui/pages/profesores/widget.dart';

class ActualizarProfes extends StatefulWidget {
  const ActualizarProfes({super.key});

  @override
  State<ActualizarProfes> createState() => _ActualizarProfes();
}

class _ActualizarProfes extends State<ActualizarProfes> {
  TextEditingController controlnombre = TextEditingController();
  TextEditingController controlprograma = TextEditingController();
  TextEditingController controlhoras = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("editar profesores"),
      ),
      body: Center(
        child: Column(
          children: [
            Textos(controlnombre: controlnombre, titulo: 'Editar Nombre:'),
            Textos(controlnombre: controlprograma, titulo: 'Editar Programa:'),
            Textos(controlnombre: controlhoras, titulo: 'Editar horas:'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Profesor profe = Profesor(
                        foto:
                            "https://cdn.pixabay.com/photo/2015/10/01/17/17/car-967387_1280.png",
                        horas: controlhoras.text,
                        nombre: controlnombre.text,
                        programa: controlprograma.text,
                        estado: true);
                    Navigator.pop(context, profe);
                  },
                  child: const Text("guardar edicion")),
            ),
          ],
        ),
      ),
    );
  }
}
