class Profesor {
  var nombre;
  var programa;
  var foto;
  var horas;
  var estado;

  Profesor(
      {required this.foto,
      required this.horas,
      required this.nombre,
      required this.programa,
      required this.estado});

  factory Profesor.crear(Map jsonMap) {
    return Profesor(
        foto: jsonMap['foto'],
        nombre: jsonMap['nombre'],
        horas: jsonMap['horas'],
        programa: jsonMap['programa'],
        estado: jsonMap['estado']);
  }
}

var dato = {
  "foto": "https://cdn.pixabay.com/photo/2015/10/01/17/17/car-967387_1280.png",
  "nombre": "jose",
  "programa": "ingenieria de sistemas",
  "horas": 12,
  "estado": true
};

var dato2 = {
  "foto": "https://cdn.pixabay.com/photo/2015/10/01/17/17/car-967387_1280.png",
  "nombre": "maria jose",
  "programa": "licenciatura",
  "horas": 12,
  "estado": false
};

var dato3 = {
  "foto": "https://cdn.pixabay.com/photo/2015/10/01/17/17/car-967387_1280.png",
  "nombre": "amilkar",
  "programa": "ingenieria de sistemas",
  "horas": 12,
  "estado": true
};

List<Profesor> listaprofes = [
  Profesor.crear(dato),
  Profesor.crear(dato2),
  Profesor.crear(dato3)
];
