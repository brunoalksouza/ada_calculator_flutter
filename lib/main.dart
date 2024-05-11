import 'package:afa_calculator_flutter/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF008BCA),
          title: const Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text(
                'Calculadora AFA',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Icon(
                Icons.airplanemode_active,
                color: Colors.white, // Define a cor do ícone como branco
              ),
            ),
          ],
        ),
        body: const HomePage(),
      ),
    );
  }
}
