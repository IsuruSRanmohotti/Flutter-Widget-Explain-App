import 'package:flutter/material.dart';

class ClickableWidgets extends StatefulWidget {
  const ClickableWidgets({super.key});

  @override
  State<ClickableWidgets> createState() => _ClickableWidgetsState();
}

class _ClickableWidgetsState extends State<ClickableWidgets> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //InkWell Widget
            InkWell(
              onTap: () {
                print("object");
              },
              onHover: (value) {
                setState(() {
                  isHover = value;
                });
              },
              child: Container(
                width: 100,
                height: 100,
                color: isHover ? Colors.red : Colors.blue,
                child: const Center(
                  child: Text(
                    "Click Me",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //GestureDetector Widget
            GestureDetector(
              onDoubleTap: () {
                print("Pressed");
              },
              child: Container(
                color: Colors.green,
                width: 100,
                height: 100,
                child: const Center(
                  child: Text(
                    "Click Me",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
