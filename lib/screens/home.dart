import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final options = const [
    "Ver facturas",
    "Ingresar Facturas",
    "Agrupado Proveedor",
    "Resumen",
    "Proveedor",
    "Categoría",
    "Configuración"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Opciones")),
      ),
    );
  }
}
