import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mhybloc/blocs/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mhybloc/blocs/user_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // CounterBloc mycounter = context.read<CounterBloc>(); //hanya pertama kali
    // CounterBloc mycounter = context.watch<CounterBloc>(); //berkali" ketika bloc berubah
    // String nameUser = context.select<UserBloc, String>(
    //   (value) => value.state["name"],
    // ); //berkali" ketika bloc berubah
    // int ageUser = context.select<UserBloc, int>(
    //   (value) => value.state["age"],
    // ); //berkali" ketika bloc berubah
    return Scaffold(
      appBar: AppBar(
        title: const Text("Extensions Method"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Builder(builder: (context) {
              String nameUser = context.select<UserBloc, String>(
                (value) => value.state["name"],
              ); //berkali" ketika bloc berubah
              return Text("Nama : ${nameUser}");
            }),
            Builder(builder: (context) {
              int ageUser = context.select<UserBloc, int>(
                (value) => value.state["age"],
              ); //berkali" ketika bloc berubah
              return Text("Umur : ${ageUser} tahun");
            }),
            // Builder(builder: (context) {
            //   CounterBloc mycounter = context.watch<CounterBloc>();
            //   return Text(
            //     "${mycounter.state}",
            //     style: const TextStyle(fontSize: 50),
            //   );
            // }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      context
                          .read<UserBloc>()
                          .changeAge(context.read<UserBloc>().state["age"] - 1);
                    },
                    icon: const Icon(Icons.remove)),
                IconButton(
                    onPressed: () {
                      context
                          .read<UserBloc>()
                          .changeAge(context.read<UserBloc>().state["age"] + 1);
                    },
                    icon: const Icon(Icons.add)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
