import 'package:facuturas_registro/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = HomeScreen.routeName;
  static Map<String, Widget Function(BuildContext)> routes = {
    HomeScreen.routeName: (BuildContext context) => const HomeScreen(),
    FacturasScreen.routeName: (BuildContext context) => const FacturasScreen(),
    IngresarScreen.routeName: (BuildContext context) => const IngresarScreen(),
    AgrupadoScreen.routeName: (BuildContext context) => const AgrupadoScreen(),
    ResumenScreen.routeName: (BuildContext context) => const ResumenScreen(),
    IvaScreen.routeName: (BuildContext context) => const IvaScreen(),
    CategoriaScreen.routeName: (BuildContext context) =>
        const CategoriaScreen(),
    ProveedorScreen.routeName: (BuildContext context) =>
        const ProveedorScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    //print(settings);
    return MaterialPageRoute(
      builder: (BuildContext context) => const HomeScreen(),
    );
  }
}
