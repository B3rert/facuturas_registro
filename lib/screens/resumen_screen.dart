import 'package:flutter/material.dart';

class ResumenScreen extends StatelessWidget {
  const ResumenScreen({Key? key}) : super(key: key);

//name route
  static const routeName = 'resumen';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('ResumenScreen'),
      ),
    );
  }
}
