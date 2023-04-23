import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Chip(
              label: const Text("Action"),
              backgroundColor: Colors.amber,
              deleteIcon: const Icon(Icons.close),
              onDeleted: () {},
            ),
            const SizedBox(
              width: 10,
            ),
            Chip(
              label: const Text(
                "Action",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.green,
              deleteIcon: const Icon(
                Icons.close,
                color: Colors.white,
              ),
              onDeleted: () {},
            )
          ],
        ),
      ),
    );
  }
}
