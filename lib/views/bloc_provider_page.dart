import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mhybloc/bloc/counter_bloc.dart';
import 'package:mhybloc/extract/data_widget.dart';

class BlocProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc myCounter = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Provider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    myCounter.decrement();
                  },
                  child: const SizedBox(
                    height: 100,
                    width: 75,
                    child: Center(
                        child: Text(
                      "-",
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    )),
                  ),
                ),
              ),
              DataWidget(),
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    myCounter.increment();
                  },
                  child: const SizedBox(
                    height: 100,
                    width: 75,
                    child: Center(
                        child: Text(
                      "+",
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
