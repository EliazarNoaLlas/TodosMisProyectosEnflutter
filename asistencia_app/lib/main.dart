import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi App de Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hola Flutter'),
        ),
        body: const Center(
          child: Text('¡Bienvenido a tu primera aplicación Flutter!'),
        ),
      ),
    );
  }
}
