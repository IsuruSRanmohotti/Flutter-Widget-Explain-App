import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text(
              "One",
              style: TextStyle(fontSize: 25),
            ),
            Text("Two", style: TextStyle(fontSize: 25)),
            Text("Three", style: TextStyle(fontSize: 25)),
          ],
        ),
      ),
    );
  }
}
