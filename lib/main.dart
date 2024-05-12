import 'package:afa_eear_calculator_flutter/utils/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:afa_eear_calculator_flutter/home.dart';
import 'package:afa_eear_calculator_flutter/utils/constants.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool isAFA = true;

  void toggleTitle(bool newValue) {
    setState(() {
      isAFA = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: mainColor),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          title: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
              child: Text(
                isAFA ? 'Calculadora AFA' : 'Calculadora EEAR',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: CustomSwitch(
                onChanged: toggleTitle, // Passa a função de callback
              ),
            ),
          ],
        ),
        body: HomePage(isAFA: isAFA),
      ),
    );
  }
}
