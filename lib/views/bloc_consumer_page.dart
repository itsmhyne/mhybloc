import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mhybloc/bloc/counter_bloc.dart';

class BlocConsumerPage extends StatelessWidget {
  CounterBloc blocCounter = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Consumer"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocConsumer<CounterBloc, int>(
            bloc: blocCounter,
            builder: (context, state) {
              return Text(
                "$state",
                style: const TextStyle(fontSize: 50),
              );
            },
            buildWhen: (previous, current) {
              if (current > 10) {
                return true;
              } else {
                return false;
              }
            },
            listener: (context, state) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  duration: Duration(seconds: 1),
                  content: Text("Angka Genap")));
            },
            listenWhen: (previous, current) {
              if (current % 2 == 0) {
                return true;
              } else {
                return false;
              }
            },
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    blocCounter.decrement();
                  },
                  icon: const Icon(Icons.remove_circle_outline)),
              IconButton(
                  onPressed: () {
                    blocCounter.increment();
                  },
                  icon: const Icon(Icons.add_circle_outline)),
            ],
          )
        ],
      ),
    );
  }
}
