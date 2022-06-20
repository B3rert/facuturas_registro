import 'package:flutter/material.dart';

class CustomInputDateWidget extends StatefulWidget {
  const CustomInputDateWidget(
      {Key? key,
      this.labelText,
      this.hintText,
      this.initialValue,
      this.validator,
      required this.formProperty,
      required this.formValues})
      : super(key: key);

  final String? labelText;
  final String? hintText;
  final DateTime? initialValue;
  final bool? validator;
  final String formProperty;
  final Map<String, String> formValues;

  @override
  State<CustomInputDateWidget> createState() => _CustomInputDateWidgetState();
}

class _CustomInputDateWidgetState extends State<CustomInputDateWidget> {
  var selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: widget.initialValue ?? selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  //function Fromat date to string dd/mm/yyyy
  String formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  @override
  Widget build(BuildContext context) {
    //return TextFormField with datepicker with format dd/mm/yyyy and disable input
    widget.formValues[widget.formProperty] = formatDate(selectedDate);

    return TextFormField(
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.labelText,
        suffixIcon: IconButton(
          icon: const Icon(Icons.calendar_today, color: Colors.white),
          onPressed: () => _selectDate(context),
        ),
      ),
      validator: (value) {
        if (widget.validator == true) {
          if (value == null || value.isEmpty) {
            return 'Campo requerido.';
          }
        }
      },
      onChanged: (value) => {
        widget.formValues[widget.formProperty] = value,
      },
      controller: TextEditingController(text: formatDate(selectedDate)),
      readOnly: true,
      onTap: () => _selectDate(context),
    );
  }
}
