/// AsistenciaxRModelo.dart
/// Nombre del archivo: AsistenciaxRModelo.dart
/// Propósito: Este archivo define el modelo de datos para la asistencia a una actividad relacionada.
/// Autor: Asistente de IA
/// Última modificación: 6 de noviembre de 2024

// ignore_for_file: file_names

library AsistenciaxRModelo;

import 'package:json_annotation/json_annotation.dart';
import 'package:floor/floor.dart';

@JsonSerializable()
@Entity(tableName: "asistenciaxr")
class AsistenciaxRModelo {
  // Identificador único de la asistencia
  @primaryKey
  late int id = 0;

  // Identificador de la actividad relacionada
  @ColumnInfo(name: "id_actividad")
  late int idActividad;

  // Nombre del usuario que asiste
  @ColumnInfo(name: "nombre_usuario")
  late String nombreUsuario;

  // Hora de llegada del usuario
  @ColumnInfo(name: "hora_llegada")
  late String horaLlegada;

  // Hora de salida del usuario
  @ColumnInfo(name: "hora_salida")
  late String horaSalida;

  // Comentario del usuario
  late String comentario;

  AsistenciaxRModelo();

  // Constructor para deserialización desde JSON
  AsistenciaxRModelo.fromJsonLocal(Map<String, dynamic> json) {
    id = json['id'];
    idActividad = json['id_actividad'];
    nombreUsuario = json['nombre_usuario'];
    horaLlegada = json['hora_llegada'];
    horaSalida = json['hora_salida'];
    comentario = json['comentario'];
  }
}
