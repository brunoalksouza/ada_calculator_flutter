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
      appBar: AppBar(
        title: const Text('AFA Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red, // cor da borda
                  width: 1, // espessura da borda
                ),
              ),
              child: const Column(
                children: [
                  Text(
                    'Dia 1',
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(height: 2),
                  Row(
                    children: [
                      Expanded(
                        child: MyCustomInput(
                          labelText: 'Português',
                          size: 0.3,
                        ),
                      ),
                      Expanded(
                        child: MyCustomInput(
                          labelText: 'Matemática',
                          size: 0.3,
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
                        ),
                      ),
                      Expanded(
                        child: MyCustomInput(
                          labelText: 'Física',
                          size: 0.3,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red, // cor da borda
                  width: 1, // espessura da borda
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
