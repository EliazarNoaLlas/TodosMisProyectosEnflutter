// database_helper.dart
// Propósito del archivo: Este archivo contiene una clase DatabaseHelper que proporciona
// funcionalidad para interactuar con una base de datos SQLite en una aplicación Flutter.
// Autor: Tu Nombre
// Fecha de última modificación: 07/11/2024

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  // Método para abrir y crear la base de datos si no existe.
  // Crea una tabla 'mi_tabla' con campos 'id', 'name' y 'description'.
  Future<Database> _openDatabase() async {
    // Obtiene la ruta predeterminada de la base de datos en el dispositivo.
    final databasePath = await getDatabasesPath();
    // construye la ruta completa para mydatabase.db.
    final path = join(databasePath, 'mydatabase.db');
    // Abrir la base de datos
    return await openDatabase(
      path,
      onCreate: (Database db, int version) async {
        await db.execute('''
          CREATE TABLE mi_tabla (
            id INTEGER PRIMARY KEY,
            name TEXT,
            description TEXT
          )
        ''');
      },
      version: 1,
    );
  }

  // Método para agregar datos a la tabla 'mi_tabla'.
  Future<void> addData(String name, String description) async {
    // 1 abrir la base de datos en la ruta path.
    final database = await _openDatabase();
    // 2 Inserta un nuevo registro en la tabla mi_tabla con name y description.
    await database.insert(
      'mi_tabla',
      {'name': name, 'description': description},
      // para registros repetidos
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    await database.close();
  }

  // Método para obtener todos los datos de la tabla 'mi_tabla'.
  Future<List<Map<String, dynamic>>> getData() async {
    // 1 abrir la base de datos en la ruta path.
    final database = await _openDatabase();
    // 2 consulta todos los registros de mi_tabla y devuelve los resultados como una lista de mapas.
    final resutlt = await database.query('mi_tabla');
    return resutlt;
  }

  // Método para mostrar todos los datos de la tabla 'mi_tabla'.
  Future<void> mostrarData() async {
    final database = await _openDatabase();
    final data = await database.query('mi_tabla');
    print(data);
    await database.close();
  }

  // Método para actualizar un registro existente en la tabla 'mi_tabla'.
  Future<void> updateData(int id, String name, String description) async {
    final database = await _openDatabase();
    await database.update(
      'mi_tabla',
      {'name': name, 'description': description},
      where: 'id = ?',
      whereArgs: [id],
    );
    await database.close();
  }

  // Método para eliminar un registro de la tabla 'mi_tabla'.
  Future<void> deleteData(int id) async {
    final database = await _openDatabase();
    await database.delete(
      'mi_tabla',
      where: 'id = ?',
      whereArgs: [id],
    );
    await database.close();
  }
}
