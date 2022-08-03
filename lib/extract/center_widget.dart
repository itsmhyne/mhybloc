import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mhybloc/bloc/counter_bloc.dart';

class center_widget extends StatelessWidget {
  const center_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterBloc myCounter = BlocProvider.of<CounterBloc>(context);
    return Center(
        child: BlocBuilder(
      bloc: myCounter,
      builder: (context, state) {
        return Text(
          "${state}",
          style: const TextStyle(fontSize: 50, color: Colors.white),
        );
      },
    ));
  }
}
