import 'package:flutter/material.dart';

class Third_page extends StatefulWidget {
  const Third_page({Key? key}) : super(key: key);

  @override
  State<Third_page> createState() => _Third_pageState();
}

class _Third_pageState extends State<Third_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(55),
            child: Text(
              "To start calling contacts who have WhatsApp, tap at the bottom of your screen.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade700,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_call),
        backgroundColor: Colors.green.shade700,
      ),
    );
  }
}
