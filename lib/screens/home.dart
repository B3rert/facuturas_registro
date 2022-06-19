import 'package:facuturas_registro/models/models.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  //List with menuOptions model
  final menuOptions = const [
    MenuOption(
      title: "Ver facturas",
      icon: Icons.list,
      route: "facturas",
    ),
    MenuOption(
      title: "Ingresar Facturas",
      icon: Icons.add,
      route: "ingresar",
    ),
    MenuOption(
      title: "Agrupado Proveedor",
      icon: Icons.group_work,
      route: "agrupado",
    ),
    MenuOption(
      title: "Resumen",
      icon: Icons.assessment,
      route: "resumen",
    ),
    MenuOption(
      title: "Proveedor",
      icon: Icons.person,
      route: "proveedor",
    ),
    MenuOption(
      title: "Categoría",
      icon: Icons.category,
      route: "categoria",
    ),
    MenuOption(
      title: "IVA",
      icon: Icons.attach_money,
      route: "iva",
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
