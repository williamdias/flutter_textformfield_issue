import 'package:flutter/material.dart';

import './page_statefull.dart';
import './page_stateless.dart';
import './page_stateless_with_bloc.dart';

class PageMain extends StatelessWidget {

  final formKey = GlobalKey<FormState>();

  PageMain() {
    print('-> PageMain created');
  }

  @override
  Widget build(BuildContext context) {
    print('-> PageMain built');
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            Form(
              key: formKey,
              child: TextFormField(),
            ),
            FlatButton(
              child: Text('page - statefull widget'),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PageStateful())),
            ),
            FlatButton(
              child: Text('page - stateless widget'),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PageStateless())),
            ),
            FlatButton(
              child: Text('page - stateless widget with bloc'),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PageStatelessWithBloc())),
            ),
          ],
        ),
      ),
    );
  }
}
