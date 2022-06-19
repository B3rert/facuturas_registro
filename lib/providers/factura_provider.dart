import 'package:facuturas_registro/models/models.dart';
import 'package:flutter/material.dart';

class FacturaProvider extends ChangeNotifier {
  final List<FacturaModel> facturas = [];

  void addFactura(FacturaModel factura) {
    facturas.add(factura);
    notifyListeners();
  }

  void removeFactura(FacturaModel factura) {
    facturas.remove(factura);
    notifyListeners();
  }
}
