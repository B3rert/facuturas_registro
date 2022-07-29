import 'package:flutter/material.dart';

class IvaScreen extends StatelessWidget {
  const IvaScreen({Key? key}) : super(key: key);
  //name route
  static const routeName = 'iva';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('IVA')),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text("IVA actualmente aplicado: No configurado."),
              ],
            ),
          ),
        ));
  }
}
