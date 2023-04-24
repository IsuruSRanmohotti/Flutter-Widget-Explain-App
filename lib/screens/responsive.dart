import 'package:flutter/material.dart';

class ResponsiveUI extends StatefulWidget {
  const ResponsiveUI({super.key});

  @override
  State<ResponsiveUI> createState() => _ResponsiveUIState();
}

class _ResponsiveUIState extends State<ResponsiveUI> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: screenSize.width,
            color: screenSize.width <= 400 ? Colors.green : Colors.red,
            height: screenSize.height * 0.25,
          ),
          Text(
            "Height - ${screenSize.height}",
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Text(
            "Width- ${screenSize.width}",
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Text(
            screenSize.width <= 400 ? "Mobile" : "Desktop",
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ));
  }
}
