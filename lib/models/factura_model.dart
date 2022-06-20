import 'package:facuturas_registro/models/models.dart';

class FacturaModel {
  FacturaModel({
    required this.id,
    required this.tipo,
    required this.fecha,
    required this.proveedor,
    this.categoria,
    required this.total,
  });

  int id;
  String tipo;
  String fecha;
  ProveedorModel proveedor;
  String? categoria;
  double total;
}
