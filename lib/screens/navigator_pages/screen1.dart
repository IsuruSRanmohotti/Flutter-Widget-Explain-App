import 'package:flutter/material.dart';

import 'screen2.dart';

//Screen 1
class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              const Text(
                "Screen 01",
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
              Hero(
                tag: "btn",
                child: ElevatedButton(
                    onPressed: () {
                      // >>>>>>>>>>>>>>MateriaPageRoute

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Screen2(
                                    text: email.text,
                                  )));

                      //>>>>>>>>>>>>>>>>>CupertinoPageRoute
                      //
                      // Navigator.push(
                      //     context,
                      //     CupertinoPageRoute(
                      //         builder: (context) => const Screen2()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Screen 02",
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: email,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("Email")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
