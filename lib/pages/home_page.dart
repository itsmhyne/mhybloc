import 'package:flutter/material.dart';
import 'package:mhybloc/blocs/counter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mhybloc/blocs/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterBloc mycounter = context.read<CounterBloc>();
    ThemeBloc mytheme = context.read<ThemeBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MultiBlocListener(
              listeners: [
                // listen tema
                BlocListener<ThemeBloc, bool>(listener: (context, state) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("tema gelap aktif"),
                    duration: Duration(seconds: 1),
                  ));
                }, listenWhen: (previous, currnet) {
                  if (currnet == false) {
                    return true;
                  } else {
                    return false;
                  }
                }),
                // listen counter
                BlocListener<CounterBloc, int>(
                  listener: (context, state) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("diatas 10"),
                      duration: Duration(seconds: 1),
                    ));
                  },
                  listenWhen: (previous, current) {
                    if (current > 10) {
                      return true;
                    } else {
                      return false;
                    }
                  },
                  child: BlocBuilder<CounterBloc, int>(
                    builder: (context, state) {
                      return Text(
                        "$state",
                        style: const TextStyle(fontSize: 50),
                      );
                    },
                  ),
                )
              ],
              child: BlocBuilder<CounterBloc, int>(
                builder: (context, state) {
                  return Text(
                    "$state",
                    style: const TextStyle(fontSize: 50),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      mycounter.min();
                    },
                    icon: const Icon(Icons.remove)),
                IconButton(
                    onPressed: () {
                      mycounter.plus();
                    },
                    icon: const Icon(Icons.add)),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mytheme.changeTheme();
        },
        child: const Icon(Icons.settings),
      ),
    );
  }
}
