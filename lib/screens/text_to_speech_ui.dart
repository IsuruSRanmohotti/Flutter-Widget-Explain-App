import 'package:flutter/material.dart';

import '../custom/custom_card.dart';
import '../custom/custom_container.dart';

class TextToSpeech extends StatelessWidget {
  const TextToSpeech({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              CustomContainer(
                text: 'Paste Text',
                icon: Icons.text_fields,
                subtitle: 'Input or paste your text',
                colors: const [Colors.purple, Colors.purpleAccent],
              ),
              const SizedBox(
                height: 10,
              ),
              CustomContainer(
                text: 'Import File',
                icon: Icons.important_devices,
                subtitle: 'Import From Storage',
                colors: const [Colors.orange, Colors.deepOrange],
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Open Recent',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black54),
                  )),
              const SizedBox(
                height: 15,
              ),
              CustomCard(
                title: 'Flutter Widget',
                subtitle: "Container , TextField",
              ),
              CustomCard(
                title: 'Dart',
                subtitle: "Container , TextField",
              ),
              CustomCard(
                title: 'Dart2Js',
                subtitle: "Container , TextField",
              ),
              CustomCard(
                title: 'Dart2Js',
                subtitle: "Container , TextField",
              )
            ],
          ),
        ),
      ),
    );
  }
}
