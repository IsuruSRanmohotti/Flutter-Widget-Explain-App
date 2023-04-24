import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double volume = 10;
  double radius = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Volume - ${volume.toInt()}",
            style: TextStyle(fontSize: volume, fontWeight: FontWeight.bold),
          ),
          Slider(
              value: volume,
              min: 0,
              max: 50,
              onChanged: (val) {
                setState(() {
                  volume = val;
                });
              }),
          Slider(
              value: radius,
              min: 0,
              max: 100,
              onChanged: (val) {
                setState(() {
                  radius = val;
                });
              }),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 280,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(radius)),
          )
        ],
      ),
    );
  }
}
