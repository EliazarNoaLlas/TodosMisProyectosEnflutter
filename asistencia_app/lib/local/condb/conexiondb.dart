// conexiodb.dart
// Propósito: Este archivo define la clase 'ConexionDBL', que proporciona una
// función para establecer una conexión con la base de datos utilizando Floor.
// Autor: [Tu Nombre]
// Fecha de última modificación: 06/11/2024

import 'package:asistencia_app/local/db/database.dart';

mixin ConexionDBL {
  Future<AppDatabase> connection() async {
    // Retorna la base de datos construida o abierta usando Floor.
    return await $FloorAppDatabase
        .databaseBuilder('asistenciax_upeu.db')
        .build();
  }
}
