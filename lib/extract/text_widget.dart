import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mhybloc/bloc/counter_bloc.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // CounterBloc mycounter = BlocProvider.of<CounterBloc>(context);
    CounterBloc mycounter = context.read<CounterBloc>();
    return BlocBuilder(
        bloc: mycounter,
        builder: (context, state) {
          print("$state");
          return Text(
            "$state",
            style: const TextStyle(
              fontSize: 50,
              color: Colors.white,
            ),
          );
        });
  }
}
