import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mhybloc/cubits/counter_cubit.dart';

class BasicCubit extends StatelessWidget {
  BasicCubit({Key? key}) : super(key: key);

  CounterCubit cubitCounter = CounterCubit(inisialData: 90);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basic Cubit"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder(
            stream: cubitCounter.stream,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: Text(
                    "Wait for click...",
                    style: TextStyle(fontSize: 25),
                  ),
                );
              } else {
                return Center(
                  child: Column(
                    children: [
                      Text(
                        "${snapshot.data}",
                        style: const TextStyle(fontSize: 50),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    cubitCounter.decrement();
                  },
                  icon: const Icon(Icons.remove_circle_outline)),
              IconButton(
                  onPressed: () {
                    cubitCounter.increment();
                  },
                  icon: const Icon(Icons.add_circle_outline)),
            ],
          )
        ],
      ),
    );
  }
}
