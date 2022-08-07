import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mhybloc/blocs/user_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserBloc dataUser = context.read<UserBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Selector"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(50),
        children: [
          BlocSelector<UserBloc, Map<String, dynamic>, String>(
            selector: (state) => state['name'],
            builder: (context, state) {
              return Text(
                "Nama : ${state}",
                style: const TextStyle(fontSize: 25),
              );
            },
          ),
          BlocSelector<UserBloc, Map<String, dynamic>, int>(
            selector: (state) => state['age'],
            builder: (context, state) {
              return Text(
                "Umur : ${state} tahun",
                style: const TextStyle(fontSize: 25),
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            onChanged: (value) => dataUser.changeName(value),
            decoration: const InputDecoration(border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    dataUser.changeAge(dataUser.state["age"] - 1);
                  },
                  icon: const Icon(Icons.remove_circle_outline)),
              IconButton(
                  onPressed: () {
                    dataUser.changeAge(dataUser.state["age"] + 1);
                  },
                  icon: const Icon(Icons.add_circle_outline)),
            ],
          )
        ],
      ),
    );
  }
}
