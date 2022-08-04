import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mhybloc/bloc/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({Key? key}) : super(key: key);

// jika di di myapp
  // @override
  // Widget build(BuildContext context) {
  //   CounterBloc mycounter = context.read<CounterBloc>();
  //   return Scaffold(
  //     appBar: AppBar(title: Text("Blog Provider Value")),
  //     body: Center(
  //       child: BlocBuilder(
  //         bloc: mycounter,
  //         builder: (context, state) => Text(
  //           "$state",
  //           style: const TextStyle(fontSize: 100),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // jika di di scaffold
  @override
  Widget build(BuildContext context) {
    CounterBloc mycounter = context.read<CounterBloc>();
    return Scaffold(
      appBar: AppBar(title: Text("Blog Provider Value")),
      body: Center(
        child: BlocBuilder(
          bloc: mycounter,
          builder: (context, state) => Text(
            "$state",
            style: const TextStyle(fontSize: 100),
          ),
        ),
      ),
    );
  }
}
