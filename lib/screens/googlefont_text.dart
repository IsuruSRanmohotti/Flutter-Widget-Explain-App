import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontText extends StatefulWidget {
  const GoogleFontText({super.key});

  @override
  State<GoogleFontText> createState() => _GoogleFontTextState();
}

class _GoogleFontTextState extends State<GoogleFontText> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  setState(() {});
                },
                controller: textController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Type your text")),
              ),
              Text(
                textController.text,
                style:
                    GoogleFonts.akayaKanadaka(fontSize: 50, color: Colors.blue),
              ),
              Text(
                textController.text,
                style: GoogleFonts.abhayaLibre(fontSize: 50, color: Colors.red),
              ),
              Text(
                textController.text,
                style: GoogleFonts.aclonica(fontSize: 50, color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
