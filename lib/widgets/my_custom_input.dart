import 'package:flutter/material.dart';

class MyCustomInput extends StatelessWidget {
  final String labelText;
  final double size;
  Icon icon;

  MyCustomInput(
      {super.key,
      required this.labelText,
      required this.size,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          decoration: InputDecoration(
              labelText: labelText,
              prefixIcon: icon,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * size)),
        ),
      ),
    );
  }
}
