import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.favorite, size: 50, color: Colors.red),
                Icon(Icons.follow_the_signs_outlined,
                    size: 50, color: Colors.red),
                Icon(Icons.camera_alt, size: 50, color: Colors.red),
                Icon(Icons.home, size: 50, color: Colors.red),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              width: 270,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.download,
                    color: Colors.white,
                    size: 25,
                  ),
                  Text(
                    "Download",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
