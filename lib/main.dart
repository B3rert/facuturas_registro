import 'package:facuturas_registro/routes/app_routes.dart';
import 'package:facuturas_registro/themes/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Impuestos',
      theme: AppTheme.darkTheme,
      initialRoute: AppRoutes.initialRoute,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      routes: AppRoutes.routes,
    );
  }
}
