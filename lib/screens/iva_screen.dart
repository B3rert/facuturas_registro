import 'package:flutter/material.dart';

class IvaScreen extends StatelessWidget {
  const IvaScreen({Key? key}) : super(key: key);
  //name route
  static const routeName = 'iva';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('IvaScreen'),
      ),
    );
  }
}
