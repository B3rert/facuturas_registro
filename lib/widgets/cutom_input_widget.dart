import 'package:facuturas_registro/helper/input_helper.dart';
import 'package:facuturas_registro/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomInputWidget extends StatelessWidget {
  const CustomInputWidget({
    Key? key,
    this.suffixIcon,
    this.labelText,
    this.hintText,
    required this.maxLines,
    this.initialValue,
    this.validator = true,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  final IconData? suffixIcon;
  final String? labelText;
  final String? hintText;
  final String? initialValue;
  final int maxLines;

  final bool? validator;
  final String formProperty;
  final Map<String, String> formValues;

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    final inputHelper = Provider.of<InputHelper>(context);
    if (inputHelper.clearInput) {
      _controller.clear();
      // setState(() {});
      inputHelper.clearInput = false;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: TextFormField(
        controller: _controller,
        maxLines: maxLines,
        initialValue: initialValue,
        onChanged: (value) => {
          formValues[formProperty] = value,
        },
        decoration: InputDecoration(
          //counter: const Text('Caracteres'),
          labelText: labelText,
          hintText: hintText,
          suffixIcon: suffixIcon == null
              ? null
              : Icon(
                  suffixIcon,
                  color: AppTheme.primary,
                ),
        ),
        validator: (value) {
          if (validator == true) {
            if (value == null || value.isEmpty) {
              return 'Campo requerido.';
            }
          }
        },
      ),
    );
  }
}