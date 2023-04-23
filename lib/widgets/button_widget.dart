import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Icon Button"),
            IconButton(
                color: Colors.green,
                onPressed: () {},
                icon: const Icon(Icons.favorite)),
            const Text("Text Button"),
            TextButton(
              onPressed: () {},
              child: const Text("Save"),
            ),
            const Text("Filled Button"),
            FilledButton(onPressed: () {}, child: const Text("SignUp")),
            const Text("Elevated Button"),
            ElevatedButton(onPressed: () {}, child: const Text("SignIn")),
            const Text("Outlined Button"),
            OutlinedButton(
              onPressed: () {},
              child: const Text("Save"),
            )
          ],
        ),
      ),
    );
  }
}
