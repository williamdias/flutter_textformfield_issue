import 'package:flutter/material.dart';

class MockPage extends StatefulWidget {
  @override
  _MockPageState createState() => _MockPageState();
}

class _MockPageState extends State<MockPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          TextField(
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MockPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
