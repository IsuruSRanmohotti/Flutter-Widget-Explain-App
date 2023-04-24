import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            child: Container(
              color: Colors.amber,
              width: 125,
              height: 125,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.green,
              width: 50,
              height: 50,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              color: Colors.green,
              width: 50,
              height: 50,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              color: Colors.green,
              width: 50,
              height: 50,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              color: Colors.green,
              width: 50,
              height: 50,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              color: Colors.green,
              width: 50,
              height: 50,
            ),
          ),
          Positioned(
            bottom: 100,
            left: 100,
            child: Container(
              color: Colors.red,
              width: 50,
              height: 50,
            ),
          ),
          Positioned(
            top: 100,
            right: 100,
            child: Container(
              color: Colors.amber,
              width: 50,
              height: 50,
            ),
          ),
        ],
      ),
    );
  }
}
