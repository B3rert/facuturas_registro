import 'package:flutter/material.dart';

class CustomDropdownWidget extends StatefulWidget {
  const CustomDropdownWidget({
    Key? key,
    required this.items,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  final List<String> items;
  final String formProperty;
  final Map<String, String> formValues;

  @override
  State<CustomDropdownWidget> createState() => _CustomDropdownWidgetState();
}

class _CustomDropdownWidgetState extends State<CustomDropdownWidget> {
  String _chosenValue = 'Ventas';

  @override
  Widget build(BuildContext context) {
    widget.formValues[widget.formProperty] = _chosenValue;
    return DropdownButton<String>(
      value: _chosenValue,
      icon: const Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 16,
      underline: Container(
        height: 0,
      ),
      onChanged: (String? newValue) {
        setState(() {
          _chosenValue = newValue!;
          widget.formValues[widget.formProperty] = _chosenValue;
        });
      },
      items: widget.items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          //text style tittle appBar
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        );
      }).toList(),
    );
  }
}
