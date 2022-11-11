import 'dart:math';

import 'package:flutter/material.dart';
import '../../bloc/export.dart';

class AddPage extends StatelessWidget {
  AddPage({super.key});

  // inisialisasi controller
  TextEditingController inputName = TextEditingController();
  TextEditingController inputAge = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // inisialisasi bloc
    UserBloc userBloc = context.read<UserBloc>();
    return Scaffold(
        appBar: AppBar(
          title: Text("Add User"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextField(
              controller: inputName,
              decoration: InputDecoration(
                  labelText: "Name", border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: inputAge,
              decoration: InputDecoration(
                  labelText: "Age", border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  userBloc.add(
                    AddUserEvent(
                      UserModel(
                        id: Random().nextInt(9999),
                        name: inputName.text,
                        age: int.parse(inputAge.text),
                      ),
                    ),
                  );
                  Navigator.pop(context);
                },
                child: const Text("ADD USER"))
          ],
        ));
  }
}
