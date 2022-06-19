import 'package:flutter/material.dart';

class IngresarScreen extends StatelessWidget {
  const IngresarScreen({Key? key}) : super(key: key);

  //name route
  static const routeName = 'ingresar';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('IngresarScreen'),
      ),
    );
  }
}
