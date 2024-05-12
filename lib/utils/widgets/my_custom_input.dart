import 'package:flutter/material.dart';
import 'package:afa_calculator_flutter/utils/constants.dart';

class MyCustomInput extends StatelessWidget {
  final TextEditingController? controller; // Adicione este parâmetro
  final String labelText;
  final Icon? icon;
  final bool enabled;

  MyCustomInput({
    Key? key,
    required this.labelText,
    this.icon,
    this.controller, // Adicione esta linha
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller, // Use o controller aqui
        keyboardType: TextInputType.number,
        enabled: enabled,
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: icon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: mainColor),
          ),
        ),
      ),
    );
  }
}
