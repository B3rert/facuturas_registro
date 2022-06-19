import 'package:facuturas_registro/models/models.dart';
import 'package:facuturas_registro/providers/provider.dart';
import 'package:facuturas_registro/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IngresarScreen extends StatelessWidget {
  const IngresarScreen({Key? key}) : super(key: key);

  //name route
  static const routeName = 'ingresar';

  //parse string to float number, return 0 if error
  static double parseFloat(String value) {
    try {
      return double.parse(value);
    } catch (e) {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    final formIngresar = Provider.of<FormIngresarProvider>(context);
    final facturaProvider =
        Provider.of<FacturaProvider>(context, listen: false);

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (formIngresar.isValidForm()) {
              final ProveedorModel proveedor = ProveedorModel(
                id: 0,
                nombre: formIngresar.formValues['proveedorNombre']!,
                nit: formIngresar.formValues['proveedorNit']!,
              );

              final factura = FacturaModel(
                id: 0,
                fecha: formIngresar.formValues['fecha']!,
                proveedor: proveedor,
                categoria: formIngresar.formValues['categoria']!,
                total: parseFloat(formIngresar.formValues['total']!),
              );

              facturaProvider.addFactura(factura);
            }
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Center(child: Text('Nueva factura')),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: formIngresar.formKey,
            child: Column(
              children: [
                CustomInput(
                  maxLines: 1,
                  formProperty: 'fecha',
                  formValues: formIngresar.formValues,
                  labelText: 'Fecha',
                  hintText: 'Fecha de la factura',
                ),
                CustomInput(
                  maxLines: 1,
                  formProperty: 'proveedorNombre',
                  formValues: formIngresar.formValues,
                  labelText: 'Proveedor',
                  hintText: 'Nombre del proveedor',
                ),
                CustomInput(
                  maxLines: 1,
                  formProperty: 'proveedorNit',
                  formValues: formIngresar.formValues,
                  labelText: 'Nit',
                  hintText: 'Nit del proveedor',
                ),
                CustomInput(
                  maxLines: 1,
                  formProperty: 'categoria',
                  formValues: formIngresar.formValues,
                  labelText: 'Categoria',
                  hintText: 'Categoria de la factura',
                ),
                CustomInput(
                  maxLines: 1,
                  formProperty: 'total',
                  formValues: formIngresar.formValues,
                  labelText: 'Total',
                  hintText: 'Total de la factura',
                ),
              ],
            ),
          ),
        ));
  }
}
