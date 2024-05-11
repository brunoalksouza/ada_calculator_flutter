import 'package:flutter/material.dart';

class MyCustomInput extends StatelessWidget {
  final String labelText;
  final double size;

  const MyCustomInput({Key? key, required this.labelText, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          decoration: InputDecoration(
              labelText: labelText,
              prefixIcon: const Icon(Icons.book_rounded),
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
