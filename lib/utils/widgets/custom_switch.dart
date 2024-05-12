import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  final Function(bool) onChanged;

  const CustomSwitch({Key? key, required this.onChanged}) : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _switchValue = !_switchValue;
          widget
              .onChanged(_switchValue); // Chama a função de retorno de chamada
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: 50.0,
        height: 30.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: _switchValue ? Colors.blue : Colors.lightBlue,
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: AnimatedAlign(
            duration: const Duration(milliseconds: 250),
            alignment:
                _switchValue ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              width: 26.0,
              height: 26.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
