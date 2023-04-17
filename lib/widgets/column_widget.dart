import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          //Verticle Axis - සිරස් අක්ෂය
          mainAxisAlignment: MainAxisAlignment.center,
          //Horizontal Axis - තිරස් අක්ෂය
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "one",
              style: TextStyle(fontSize: 50),
            ),
            const Text("Two", style: TextStyle(fontSize: 50)),
            Container(
              width: 100,
              height: 50,
              color: Colors.green,
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: 100,
              height: 50,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
