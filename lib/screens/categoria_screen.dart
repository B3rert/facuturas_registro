import 'package:flutter/material.dart';

class CategoriaScreen extends StatelessWidget {
  const CategoriaScreen({Key? key}) : super(key: key);

  //name route
  static const routeName = 'categoria';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('CategoriaScreen'),
      ),
    );
  }
}
