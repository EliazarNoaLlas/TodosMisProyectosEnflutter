import 'dart:async';
import 'package:asistencia_app/local/dao/ActividadDao.dart';
import 'package:asistencia_app/modelo/ActividadModelo.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

// El archivo generado por Floor debe tener la directiva 'part of'.
part 'database.g.dart'; // La directiva 'part' debe estar aquí.

// Definición de la clase AppDatabase utilizando Floor.
@Database(version: 1, entities: [ActividadModelo])
abstract class AppDatabase extends FloorDatabase {
  ActividadDao get actividadDao;
}
