import 'package:flutter/material.dart';

class PageStateful extends StatefulWidget {

  PageStateful() {
    print('-> PageStateful created');
  }

  @override
  _PageStatefulState createState() => _PageStatefulState();
}

class _PageStatefulState extends State<PageStateful> {

  final keyKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    print('-> PageStateful built');
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: keyKey,
        child: Center(
          child: TextFormField(
          ),
        ),
      ),
    );
  }
}
