import 'package:flutter/material.dart';

class SoloAdventure extends StatefulWidget {
  const SoloAdventure({super.key});

  @override
  State<SoloAdventure> createState() => _SoloAdventureState();
}

class _SoloAdventureState extends State<SoloAdventure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 350,
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 125,
                    height: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Colors.blue),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.image,
                          color: Colors.white,
                          size: 50,
                        ),
                        Text(
                          "Image Here",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 62.5,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            color: Colors.blue),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 62.5,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            color: Colors.blue),
                      )
                    ],
                  )
                ],
              ),
            ),
            RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: "Destination Unique To ",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                    children: [
                      TextSpan(
                          text: "Solo Adventure",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold))
                    ]))
          ],
        ),
      ),
    );
  }
}
