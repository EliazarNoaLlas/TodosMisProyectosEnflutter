// main.dart
// Propósito del archivo: Este archivo contiene el punto de entrada de la
//                        aplicación Flutter y la interfaz de usuario inicial.
// Autor: Eliazar
// Fecha de última modificación: 14/11/2024

import 'package:curso_udemy/screens/home_screens.dart';
import 'package:flutter/material.dart';

/// Función principal que inicia la ejecución de la aplicación Flutter.
void main() => runApp(const MyApp());

/// Clase principal de la aplicación que configura los ajustes generales y el tema.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:
          false, // Oculta el banner de depuración en la esquina superior derecha.
      title: 'Material App', // Título de la aplicación.
      home: HomeScreen(), // Establece HomeScreen como la pantalla principal.
    );
  }
}
