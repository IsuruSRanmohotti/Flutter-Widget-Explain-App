import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  String text;
  IconData icon;
  String subtitle;
  List<Color> colors;

  CustomContainer({
    required this.text,
    required this.icon,
    required this.subtitle,
    this.colors = const [Colors.purple, Colors.purpleAccent],
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: colors,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 50,
          ),
          Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text(
            subtitle,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
