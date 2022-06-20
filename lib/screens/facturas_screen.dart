import 'package:facuturas_registro/providers/provider.dart';
import 'package:facuturas_registro/widgets/not_found_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FacturasScreen extends StatelessWidget {
  const FacturasScreen({Key? key}) : super(key: key);

  //name route
  static const routeName = 'facturas';

  @override
  Widget build(BuildContext context) {
    final facturaProvider = Provider.of<FacturaProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Facturas')),
      ),
      body: facturaProvider.facturas.isEmpty
          ? const NotFoundWidget(
              text: "No hay facturas que mostrar...",
            )
          : ListView.separated(
              itemCount: facturaProvider.facturas.length,
              itemBuilder: (context, index) {
                final factura = facturaProvider.facturas[index];
                return ListTile(
                  title: Text(factura.proveedor.nombre),
                  subtitle: Text(factura.fecha),
                  trailing: Text('${factura.total}'),
                );
              },
              separatorBuilder: (context, index) => const Divider(),
            ),
    );
  }
}
