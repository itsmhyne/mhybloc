import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mhybloc/bloc/export.dart';

class EditPage extends StatelessWidget {
  EditPage(this.userModel, {super.key});

  final UserModel userModel;

  // inisialisasi controller
  TextEditingController inputName = TextEditingController();
  TextEditingController inputAge = TextEditingController();

  @override
  Widget build(BuildContext context) {
    UserBloc userBloc = context.read<UserBloc>();
    inputName.text = userModel.name;
    inputAge.text = userModel.age.toString();
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit User"),
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
            controller: inputAge,
            decoration:
                InputDecoration(labelText: "Age", border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                userBloc.add(EditUserEvent(UserModel(
                    id: userModel.id,
                    name: inputName.text,
                    age: int.parse(inputAge.text))));
                Navigator.pop(context);
              },
              child: const Text("EDIT USER"))
        ],
      ),
    );
  }
}
