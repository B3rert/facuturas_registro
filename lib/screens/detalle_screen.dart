import 'package:flutter/material.dart';

class DetalleScreen extends StatelessWidget {
  const DetalleScreen({Key? key}) : super(key: key);

  //route name
  static const routeName = 'detalle';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('DetalleScreen'),
      ),
    );
  }
}
