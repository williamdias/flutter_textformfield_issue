import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageStatelessWithBloc extends StatelessWidget {

  final keyKey = GlobalKey<FormState>();
  final bloc = CustomBloc();

  PageStatelessWithBloc() {
    print('-> PageStatelessWithBloc created');
  }

  @override
  Widget build(BuildContext context) {
    print('-> PageStatelessWithBloc built');
    return BlocBuilder (
      bloc: bloc,
      builder: (BuildContext context, int state) {
        print('-> PageStatelessWithBloc callback');
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
      },
    );
  }
}

class CustomBloc extends Bloc<int, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(int currentState, int event) async* {
  }
}
