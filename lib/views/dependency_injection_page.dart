import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mhybloc/bloc/counter_bloc.dart';
import 'package:mhybloc/extract/container_merah.dart';
import 'package:mhybloc/views/othre_page.dart';

class DependencyInjectionPage extends StatelessWidget {
  // const DependencyInjectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // CounterBloc myCounter = BlocProvider.of<CounterBloc>(context);
    CounterBloc myCounter = context.read<CounterBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dependency Injection"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // jika di di my app
          // Navigator.of(context).push(MaterialPageRoute(
          //   builder: (context) => const OtherPage(),
          // ));
          // jika di di scaffold
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => BlocProvider.value(
                    value: myCounter,
                    child: const OtherPage(),
                  )

              // tidak disarankan
              // BlocProvider(
              //   create: (context) => myCounter,
              //   child: const OtherPage(),
              // ),
              ));
        },
        child: const Icon(Icons.arrow_forward_ios),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              color: Colors.green,
              borderRadius: BorderRadius.circular(25),
              child: InkWell(
                borderRadius: BorderRadius.circular(25),
                onTap: () {
                  myCounter.decrement();
                },
                child: const SizedBox(
                  height: 50,
                  width: 50,
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ContainerMerah(),
            Material(
              color: Colors.green,
              borderRadius: BorderRadius.circular(25),
              child: InkWell(
                borderRadius: BorderRadius.circular(25),
                onTap: () {
                  myCounter.increment();
                  print("increment");
                },
                child: const SizedBox(
                  height: 50,
                  width: 50,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
