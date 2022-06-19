import 'package:flutter/cupertino.dart';

class FormIngresarProvider extends ChangeNotifier {
  final Map<String, String> formValues = {
    "fecha": "",
    "proveedorNombre": "",
    "proveedorNit": "",
    "categoria": "",
    "total": "",
  };

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isValidForm() {
    return formKey.currentState?.validate() ?? false;
  }
}
