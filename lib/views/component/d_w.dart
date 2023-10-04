import 'package:flutter/material.dart';

class Mydrawer extends StatefulWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Mytextbox(text: "Profile"),
            Mytextbox(text: "Privacy"),
            Mytextbox(text: "Back Up"),
            Mytextbox(text: "Settings"),
          ],
        ),
      ),
    );
  }

  Mytextbox({required String text}) => Container(
        margin: EdgeInsets.only(left: 20, top: 20),
        alignment: Alignment.centerLeft,
        height: 30,
        width: 300,
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
        child: Text(
          text,
          style: TextStyle(fontSize: 16),
        ),
      );
}
