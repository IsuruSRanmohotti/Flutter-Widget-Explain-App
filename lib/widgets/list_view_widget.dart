import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          ListTile(
              title: Text("Kamal Senarathne"),
              subtitle: Text("Software engineer"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg"),
              )),
          ListTile(
              title: Text("Kamal Senarathne"),
              subtitle: Text("Software engineer"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg"),
              )),
        ],
      ),
    );
  }
}
