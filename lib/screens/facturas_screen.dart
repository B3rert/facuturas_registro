import 'package:facuturas_registro/models/models.dart';
import 'package:facuturas_registro/providers/provider.dart';
import 'package:facuturas_registro/screens/ingresar_screen.dart';
import 'package:facuturas_registro/screens/screens.dart';
import 'package:facuturas_registro/themes/app_theme.dart';
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

    //Separate the facturas into two lists, one for Emitidas and one for Recibidas
    final List<FacturaModel> facturasEmitidas = [];
    final List<FacturaModel> facturasRecibidas = [];
    for (FacturaModel factura in facturaProvider.facturas) {
      if (factura.tipo == 'Emitida') {
        facturasEmitidas.add(factura);
      } else {
        facturasRecibidas.add(factura);
      }
    }

    //app bar title facturas with 2 tabs emitidas and recibidas
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Facturas')),
          bottom: const TabBar(
            indicatorColor: AppTheme.secondary,
            tabs: [
              Tab(
                text: 'Emitidas',
              ),
              Tab(
                text: 'Recibidas',
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                Navigator.pushNamed(context, IngresarScreen.routeName);
              },
            ),
          ],
        ),
        body: TabBarView(
          children: [
            //emitidas tab
            _Emitidas(facturas: facturasEmitidas),
            //recibidas tab
            _Recibidas(
              facturas: facturasRecibidas,
            ),
          ],
        ),
      ),
    );
  }
}

class _Recibidas extends StatelessWidget {
  const _Recibidas({
    Key? key,
    required this.facturas,
  }) : super(key: key);

  final List<FacturaModel> facturas;

  @override
  Widget build(BuildContext context) {
    return facturas.isEmpty
        ? const NotFoundWidget(
            text: "No hay facturas que mostrar...",
          )
        : ListView.separated(
            itemCount: facturas.length,
            itemBuilder: (context, index) {
              final factura = facturas[index];
              return ListTile(
                title: Text(factura.proveedor.nombre),
                subtitle: Text(factura.fecha),
                trailing: Text('${factura.total}'),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    DetalleScreen.routeName,
                    arguments: factura,
                  );
                },
              );
            },
            separatorBuilder: (context, index) => const Divider(),
          );
  }
}

class _Emitidas extends StatelessWidget {
  const _Emitidas({
    Key? key,
    required this.facturas,
  }) : super(key: key);

  final List<FacturaModel> facturas;

  @override
  Widget build(BuildContext context) {
    return facturas.isEmpty
        ? const NotFoundWidget(
            text: "No hay facturas que mostrar...",
          )
        : ListView.separated(
            itemCount: facturas.length,
            itemBuilder: (context, index) {
              final factura = facturas[index];
              return ListTile(
                title: Text(factura.proveedor.nombre),
                subtitle: Text(factura.fecha),
                trailing: Text('${factura.total}'),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    DetalleScreen.routeName,
                    arguments: factura,
                  );
                },
              );
            },
            separatorBuilder: (context, index) => const Divider(),
          );
  }
}
