import 'package:flutter/material.dart';

class GenerateWidgetList extends StatelessWidget {
  const GenerateWidgetList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: List<Widget>.generate(
                10,
                (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                        child: Center(
                          child: Text(
                            "Widget $index",
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
          ),
        ),
      ),
    );
  }
}
