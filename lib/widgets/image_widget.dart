import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              //Network Image
              Image.network(
                "https://hips.hearstapps.com/hmg-prod/images/2024-lamborghini-revuelto-127-641a1d518802b.jpg?crop=0.813xw:0.721xh;0.0994xw,0.128xh&resize=1200:*",
              ),
              const SizedBox(
                height: 100,
              ),
              Image.asset("assets/images/car.jpg"),
              Image.asset("assets/images/car.jpg"),
              Image.asset("assets/images/car.jpg"),
              Image.asset("assets/images/car.jpg"),
              Image.asset("assets/images/car.jpg"),
              Image.asset("assets/images/car.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}
