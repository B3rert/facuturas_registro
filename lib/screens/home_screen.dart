import 'package:facuturas_registro/models/models.dart';
import 'package:facuturas_registro/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  //name route
  static const routeName = 'home';

  //List with menuOptions model
  final menuOptions = const [
    MenuOption(
      title: "Ver facturas",
      icon: Icons.list,
      route: FacturasScreen.routeName,
    ),
    MenuOption(
      title: "Ingresar Facturas",
      icon: Icons.add,
      route: IngresarScreen.routeName,
    ),
    MenuOption(
      title: "Agrupado Proveedor",
      icon: Icons.group_work,
      route: AgrupadoScreen.routeName,
    ),
    MenuOption(
      title: "Resumen",
      icon: Icons.assessment,
      route: ResumenScreen.routeName,
    ),
    MenuOption(
      title: "Proveedor",
      icon: Icons.person,
      route: ProveedorScreen.routeName,
    ),
    MenuOption(
      title: "Categoría",
      icon: Icons.category,
      route: CategoriaScreen.routeName,
    ),
    MenuOption(
      title: "IVA",
      icon: Icons.attach_money,
      route: IvaScreen.routeName,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Opciones")),
      ),
      body: ListView.separated(
        itemCount: menuOptions.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(menuOptions[index].title),
            leading: Icon(menuOptions[index].icon),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, menuOptions[index].route);
            },
          );
        },
      ),
    );
  }
}
