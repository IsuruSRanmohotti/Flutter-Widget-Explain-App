import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Flutter",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
            )),
      ),
    );
  }
}
