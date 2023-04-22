import 'package:flutter/material.dart';

class UI1 extends StatelessWidget {
  const UI1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), label: Text("Email")),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(15)),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.home),
                Icon(Icons.contact_mail),
                Icon(Icons.favorite)
              ],
            )
          ],
        ),
      ),
    );
  }
}
