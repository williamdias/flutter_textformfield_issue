import 'package:flutter/material.dart';

class PageStateless extends StatelessWidget {

  final keyKey = GlobalKey<FormState>();

  PageStateless() {
    print('-> PageStateless created');
  }

  @override
  Widget build(BuildContext context) {
    print('-> PageStateless built');
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
