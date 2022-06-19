import 'package:flutter/material.dart';

class IngresarScreen extends StatelessWidget {
  const IngresarScreen({Key? key}) : super(key: key);

  //name route
  static const routeName = 'ingresar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Nueva factura')),
      ),
      body: Center(
        child: Text('IngresarScreen'),
      ),
    );
  }
}
