import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:afa_calculator_flutter/widgets/my_custom_input.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                const Text(
                  'Dia 1',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    Expanded(
                      child: MyCustomInput(
                        labelText: 'Português',
                        size: 0.3,
                        icon: const Icon(Icons.book_rounded),
                      ),
                    ),
                    Expanded(
                      child: MyCustomInput(
                        labelText: 'Matemática',
                        size: 0.3,
                        icon: const Icon(Icons.numbers_rounded),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: MyCustomInput(
                        labelText: 'Inglês',
                        size: 0.3,
                        icon: const Icon(Icons.abc_rounded),
                      ),
                    ),
                    Expanded(
                      child: MyCustomInput(
                        labelText: 'Física',
                        size: 0.3,
                        icon: const Icon(Icons.science_rounded),
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Resultado: 0.0',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
