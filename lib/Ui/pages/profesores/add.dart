import 'package:flutter/material.dart';
import 'package:proyectoclase/domain/models/profesores.dart';
import 'package:proyectoclase/Ui/pages/profesores/widget.dart';

class CrearProfes extends StatefulWidget {
  const CrearProfes({super.key});

  @override
  State<CrearProfes> createState() => _CrearProfesState();
}

class _CrearProfesState extends State<CrearProfes> {
  TextEditingController controlnombre = TextEditingController();
  TextEditingController controlprograma = TextEditingController();
  TextEditingController controlhoras = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("crear profesores"),
      ),
      body: Center(
        child: Column(
          children: [
            Textos(controlnombre: controlnombre, titulo: 'ingrese el Nombre:'),
            Textos(
                controlnombre: controlprograma, titulo: 'ingrese el Programa:'),
            Textos(controlnombre: controlhoras, titulo: 'ingrese las horas:'),
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
                  child: const Text("guardar profe")),
            ),
          ],
        ),
      ),
    );
  }
}
