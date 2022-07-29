import 'package:facuturas_registro/models/factura_model.dart';
import 'package:flutter/material.dart';

class DetalleScreen extends StatelessWidget {
  const DetalleScreen({Key? key}) : super(key: key);

  //route name
  static const routeName = 'detalle';

  @override
  Widget build(BuildContext context) {
    //get the factura id from the route parameters
    final factura = ModalRoute.of(context)?.settings.arguments as FacturaModel;

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Detalle')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //factura id
            Text(
              'Factura: ${factura.id}',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            //factura type
            Text(
              'Tipo: ${factura.tipo}',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            //factura date
            Text(
              'Fecha: ${factura.fecha}',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            //factura amount
            Text(
              'Monto: ${factura.total}',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            //factura description
            Text(
              'Descripción: ${factura.categoria}',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
