import 'package:flutter/material.dart';

class NotFoundWidget extends StatelessWidget {
  const NotFoundWidget({
    Key? key,
    this.text = "No hay coincidencias...",
  }) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.attach_money,
            size: 130,
            color: Colors.black38,
          ),
          Text(
            text!,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
