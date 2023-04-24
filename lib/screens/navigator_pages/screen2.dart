import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  String text;
  Screen2({required this.text, super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.amber,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.text,
            style: const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          Hero(
            tag: "btn",
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Back",
                    style: TextStyle(fontSize: 20),
                  ),
                )),
          ),
          const BackButton(),
          const CloseButton(),
        ],
      )),
    );
  }
}
