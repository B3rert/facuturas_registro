import 'package:facuturas_registro/models/models.dart';

class FacturaModel {
  FacturaModel({
    required this.id,
    required this.fecha,
    required this.proveedor,
    required this.categoria,
    required this.total,
  });

  int id;
  String fecha;
  ProveedorModel proveedor;
  String categoria;
  double total;
}
