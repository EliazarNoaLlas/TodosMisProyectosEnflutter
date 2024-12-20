// home_screens.dart
// Propósito del archivo: Este archivo contiene el punto de entrada de la
//                        aplicación Flutter y la interfaz de usuario inicial.
// Autor: Eliazar
// Fecha de última modificación: 14/11/2024

import 'package:flutter/material.dart';

/// Pantalla principal de la aplicación que muestra una AppBar y un texto en el centro.
///
/// La pantalla incluye un botón flotante de acción que actualmente no tiene funcionalidad.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(), // Método para construir la AppBar de la pantalla.
      body: _buildBody(), // Método para construir el cuerpo de la pantalla.
      backgroundColor: Colors.grey[300], // Color de fondo de la pantalla.
      floatingActionButton:
          _buildFloatingActionButton(), // Botón de acción flotante.
    );
  }

  /// Construye la barra de aplicaciones con un título y color de fondo personalizado.
  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Feed Card'), // Título que se muestra en la AppBar.
      backgroundColor: Colors.green, // Color de fondo de la AppBar.
    );
  }

  /// Construye el cuerpo de la pantalla, que contiene un texto centrado.
  Widget _buildBody() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 350,
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.white),
      child: Container(
          child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: const Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  child: Text("E"),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Eliazar Noa",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color.fromARGB(245, 16, 15, 15)),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            child: Image.network(
                "https://shared.cloudflare.steamstatic.com/store_item_assets/steam/apps/570/header.jpg?t=1731544174",
                fit: BoxFit.cover),
          ),
        ],
      )),
    );
  }

  /// Construye el botón de acción flotante que actualmente no realiza ninguna acción.
  FloatingActionButton _buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () =>
          {}, // Acción al presionar el botón (sin funcionalidad actual).
      child: const Icon(Icons.add), // Icono de "agregar" dentro del botón.
    );
  }
}
