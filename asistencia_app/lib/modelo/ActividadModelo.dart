/// ActividadModelo.dart
/// Propósito del archivo: Definir la clase `ActividadModelo`
/// que representa una actividad en la base de datos y sus métodos de serialización.
/// Autor: Tu Nombre
/// Fecha de última modificación: 06/11/2024
// ignore_for_file: file_names

// ignore: library_names
library ActividadModelo;

import 'package:json_annotation/json_annotation.dart';
import 'package:floor/floor.dart';
import 'AsistenciaxRModelo.dart'; // Se importa el modelo relacionado

@JsonSerializable()
@Entity(tableName: "actividad")
class ActividadModelo {
  // Identificador único de la actividad
  @primaryKey
  late int id = 0;

  // Nombre de la actividad
  @ColumnInfo(name: "nombre_actividad")
  late final String nombreActividad;

  // Fecha de la actividad
  late final String fecha;

  // Hora de inicio de la actividad
  late final String horai;

  // Minutos de tolerancia
  @ColumnInfo(name: "min_toler")
  late final String minToler;

  // Coordenadas de la actividad
  late final String latitud;
  late final String longitud;

  // Estado de la actividad
  late final String estado;

  // Indicador de si la actividad debe ser evaluada
  late final String evaluar;

  // Usuario que creó la actividad
  @ColumnInfo(name: "user_create")
  late final String userCreate;

  // Material relacionado con la actividad
  late final String mater;

  // Indicador de validez de la inscripción
  @ColumnInfo(name: "valid_insc")
  late final String validInsc;

  // Indicador de asistencia a la subactividad
  @ColumnInfo(name: "asis_subact")
  late final String asisSubact;

  // Indicador de entrada/salida
  late final String entsal;

  // Indicador de offline
  late final String offlinex;

  // Lista de asistencias relacionadas con la actividad
  @ignore
  late List<AsistenciaxRModelo> asistenciaxs = [];

  // Constructor predeterminado requerido por json_serializable
  ActividadModelo();

  // Constructor para deserialización desde JSON
  ActividadModelo.fromJsonLocal(Map<String, dynamic> json) {
    id = json['id'];
    nombreActividad = json['nombre_actividad'];
    fecha = json['fecha'];
    horai = json['horai'];
    minToler = json['min_toler'];
    latitud = json['latitud'];
    longitud = json['longitud'];
    estado = json['estado'];
    evaluar = json['evaluar'];
    userCreate = json['user_create'];
    mater = json['mater'];
    validInsc = json['valid_insc'];
    asisSubact = json['asis_subact'];
    entsal = json['entsal'];
    offlinex = json['offlinex'];
  }
}
