import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool agreement = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Checkbox(
              value: agreement,
              onChanged: (val) {
                setState(() {
                  agreement = !agreement;
                });
              })),
    );
  }
}
