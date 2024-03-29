import 'package:flutter/material.dart';
import 'package:learn_flutter/Demo/bloc/counter_bloc_demo.dart';

class BlocDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CounterProvider(
        bloc: CounterBloc(),
        child: Scaffold(
          appBar: AppBar(title: Text('BlocDemo'), elevation: 0.0),
          body: CounterHome(),
          floatingActionButton: CounterActionButton(),
        ));
  }
}
