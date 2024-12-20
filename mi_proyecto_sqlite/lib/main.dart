// main.dart
// Propósito del archivo: Este archivo contiene el punto de entrada de la aplicación Flutter
// y la interfaz de usuario para interactuar con la base de datos SQLite.
// Autor: Tu Nombre
// Fecha de última modificación: 07/11/2024

import 'package:flutter/material.dart';
import 'database_helper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final dbhelper = DatabaseHelper();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                _insert();
              },
              child: const Text("Insertart"),
            ),
            ElevatedButton(
              onPressed: () {
                _show();
              },
              child: const Text("mostrar"),
            ),
          ],
        ),
      ),
    ));
  }

  void _insert() async {
    const name = 'Eliazar';
    const description = 'Esto es un ejemplo de SQLite';
    await dbhelper.addData(name, description);
  }

  void _show() async {
    await dbhelper.mostrarData();
  }
}
